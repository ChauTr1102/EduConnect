let user_id = sessionStorage.getItem('user_id');
let userSocket = null;
let currentConversation = null;

window.addEventListener("DOMContentLoaded", () => {
  openUserSocket();
  loadConversations();

  const userBalance = sessionStorage.getItem('user_balance');
  document.querySelector('.credit-icon').textContent = `${userBalance} VND`;

  document.querySelector('.credit-icon').addEventListener('click', function() {
  window.location.href = '/deposit';});

  document.getElementById("sendButton").onclick = sendMessage;
  document.getElementById("messageInput").addEventListener("keypress", function(e) {
    if (e.key === "Enter") sendMessage();
  });

  const searchBox = document.getElementById("userSearchInput");
  if (searchBox) {
    searchBox.addEventListener("input", searchUsers);
  }

  const clearBtn = document.getElementById("clearSearch");
  if (clearBtn) {
    clearBtn.addEventListener("click", () => {
      searchBox.value = "";
      const list = document.getElementById("userSearchList");
      if (list) list.innerHTML = "";
    });
  }
});

function openUserSocket() {
  userSocket = new WebSocket(`${protocol}://api/ws/user/${user_id}`);
  userSocket.onmessage = (event) => {
    const msg = JSON.parse(event.data);
    if (msg.type === "new_conversation") {
      loadConversations();
    } else if (msg.type === "chat") {
      if (msg.conversation_id === currentConversation) {
        const isSelf = String(msg.sender) === String(user_id);
        renderMessage(msg, isSelf);
      }
    }
  };
}

function loadConversations() {
  fetch(`/api/conversations?user=${user_id}`)
    .then(res => res.json())
    .then(conversations => {
      const list = document.getElementById("chatHistoryList");
      if (!list) return;
      list.innerHTML = "";
      conversations.forEach(conv => {
        const item = document.createElement("div");
        item.className = "chat-history-item";
        item.innerHTML = `
          <div class="history-avatar">
              <img src="${conv.avatar_url || 'images/avatar.jpg'}" alt="Ảnh Đại Diện Người Dùng">
          </div>
          <div class="history-content">
              <div class="history-name">${conv.other_name || conv.other_username}</div>
              <div class="history-preview"></div>
          </div>
        `;
        item.onclick = () => openConversation(conv.id, conv.other_name || conv.other_username, conv.avatar_url);
        list.appendChild(item);
      });
    });
}

function openConversation(convoId, convoName, avatarUrl) {
  currentConversation = convoId;

  document.getElementById("recipientName").textContent = convoName;
  document.getElementById("recipientAvatar").src = avatarUrl || 'images/avatar.jpg';

  fetch(`/api/messages?conversation_id=${convoId}`)
    .then(res => res.json())
    .then(messages => {
      const area = document.getElementById("messagesArea");
      if (!area) return;
      area.innerHTML = "";
      messages.forEach(msg => {
        const isSelf = String(msg.sender) === String(user_id);
        renderMessage(msg, isSelf);
      });
      area.scrollTop = area.scrollHeight;
    });
}

function renderMessage(msg, isSelf) {
  const area = document.getElementById("messagesArea");
  const wrap = document.createElement("div");
  wrap.className = isSelf ? "message-self" : "message-other";
  wrap.innerHTML = `
    <div class="message-bubble">${msg.message || msg.message_text}</div>
    <div class="message-time">${formatTime(msg.created_at)}</div>
  `;
  area.appendChild(wrap);
  area.scrollTop = area.scrollHeight;
}

function sendMessage() {
  const input = document.getElementById("messageInput");
  const text = input.value.trim();
  if (!text || !userSocket || userSocket.readyState !== WebSocket.OPEN || !currentConversation) return;
  userSocket.send(JSON.stringify({
    type: "chat",
    conversation_id: currentConversation,
    message: text
  }));
  input.value = "";
}

function searchUsers() {
  const keyword = document.getElementById("userSearchInput").value.trim();
  const list = document.getElementById("userSearchList");

  if (keyword === "") {
    if (list) list.innerHTML = "";
    return;
  }

  fetch(`/api/search_users?keyword=${encodeURIComponent(keyword)}&exclude=${user_id}`)
    .then(res => res.json())
    .then(users => {
      if (!list) return;
      list.innerHTML = "";
      users.forEach(u => {
        const item = document.createElement("div");
        item.className = "chat-history-item";
        item.innerHTML = `
          <div class="history-avatar"><img src="${u.avatar_url || 'images/avatar.jpg'}"></div>
          <div class="history-content">
            <div class="history-name">${u.name} (${u.username})</div>
          </div>
        `;
        item.onclick = () => {
          fetch('/api/start_conversation', {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({user1: user_id, user2: u.user_id})
          })
          .then(res => res.json())
          .then(data => {
            openConversation(data.conversation_id, u.name || u.username, u.avatar_url || 'images/avatar.jpg');
            loadConversations();
            list.innerHTML = "";
            document.getElementById("userSearchInput").value = "";
          });
        };
        list.appendChild(item);
      });
    });
}

function formatTime(isoString) {
  const date = new Date(isoString);
  const hours = date.getHours().toString().padStart(2, "0");
  const minutes = date.getMinutes().toString().padStart(2, "0");
  const day = date.getDate().toString().padStart(2, "0");
  const month = (date.getMonth() + 1).toString().padStart(2, "0");
  const year = date.getFullYear();
  return `${hours}:${minutes} · ${day}/${month}/${year}`;
}
