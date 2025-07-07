document.addEventListener('DOMContentLoaded', () => {
    let username = sessionStorage.getItem('username'); // lấy từ local/sessionStorage khi login xong
    let userSocket = null;
    let currentConversation = null;

    const chatHistoryList = document.getElementById('chatHistoryList');
    const messagesArea = document.getElementById('messagesArea');
    const messageInput = document.getElementById('messageInput');
    const sendButton = document.getElementById('sendButton');
    const searchInput = document.createElement('input');
    searchInput.placeholder = "Tìm người dùng...";
    searchInput.className = "sidebar-search-input";
    let searching = false;

    // Thêm ô tìm kiếm vào sidebar (nếu muốn)
    document.querySelector('.chat-history-sidebar').appendChild(searchInput);

    function openUserSocket() {
        userSocket = new WebSocket(`ws://localhost:8000/ws/user/${username}`);
        userSocket.onmessage = (event) => {
            const msg = JSON.parse(event.data);
            if (msg.type === "new_conversation") {
                loadConversations();
            } else if (msg.type === "chat") {
                if (msg.conversation_id === currentConversation) {
                    addMessageBubble(msg.message, msg.sender === username ? 'sent' : 'received', msg.created_at);
                }
            }
        };
    }

    function loadConversations() {
        fetch(`http://localhost:8000/conversations?user=${username}`)
            .then(res => res.json())
            .then(data => {
                chatHistoryList.innerHTML = "";
                if (!data.length) {
                    chatHistoryList.innerHTML = `
                        <div class="empty-history-message">
                            <i class="fas fa-comments empty-icon"></i>
                            <p>Chưa có cuộc trò chuyện nào</p>
                            <span>Lịch sử trò chuyện của bạn sẽ xuất hiện ở đây</span>
                        </div>
                    `;
                    return;
                }
                data.forEach(c => {
                    const item = document.createElement('div');
                    item.className = "chat-history-item";
                    item.onclick = () => openConversation(c.id, c.other_name || c.other_username, c.avatar_url);

                    item.innerHTML = `
                        <div class="history-avatar">
                            <img src="${c.avatar_url || 'images/avatar.jpg'}" alt="Ảnh Đại Diện Người Dùng">
                        </div>
                        <div class="history-content">
                            <div class="history-name">${c.other_name || c.other_username}</div>
                            <div class="history-preview"></div>
                        </div>
                        <div class="history-info"></div>
                    `;
                    chatHistoryList.appendChild(item);
                });
            });
    }

    function openConversation(convoId, name, avatarUrl) {
        currentConversation = convoId;
        messagesArea.innerHTML = "";
        // Đổi tên, avatar phía trên header chat
        document.getElementById('recipientName').textContent = name;
        document.getElementById('recipientAvatar').src = avatarUrl || "images/avatar.jpg";

        fetch(`http://localhost:8000/messages?conversation_id=${convoId}`)
            .then(res => res.json())
            .then(data => {
                messagesArea.innerHTML = "";
                data.forEach(msg => {
                    addMessageBubble(msg.message, msg.sender === username ? 'sent' : 'received', msg.created_at);
                });
            });
    }

    function addMessageBubble(text, type = 'sent', created_at = null) {
        const bubble = document.createElement('div');
        bubble.className = `message-bubble message-${type}`;
        bubble.innerHTML = `
            <span>${text}</span>
            <span class="message-timestamp">
                ${formatTime(created_at || new Date())}
            </span>
        `;
        messagesArea.appendChild(bubble);
        messagesArea.scrollTop = messagesArea.scrollHeight;
    }

    function sendMessage() {
        const text = messageInput.value.trim();
        if (!text || !userSocket || userSocket.readyState !== WebSocket.OPEN || !currentConversation) return;
        userSocket.send(JSON.stringify({
            type: "chat",
            conversation_id: currentConversation,
            message: text
        }));
        messageInput.value = "";
    }

    sendButton.addEventListener('click', sendMessage);
    messageInput.addEventListener('keypress', (e) => {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault();
            sendMessage();
        }
    });

    // Tìm kiếm user mới để tạo hội thoại
    searchInput.addEventListener('input', () => {
        const keyword = searchInput.value.trim();
        if (!keyword) {
            searching = false;
            loadConversations();
            return;
        }
        searching = true;
        fetch(`http://localhost:8000/search_users?keyword=${encodeURIComponent(keyword)}&exclude=${username}`)
            .then(res => res.json())
            .then(data => {
                chatHistoryList.innerHTML = "";
                data.forEach(u => {
                    const item = document.createElement('div');
                    item.className = "chat-history-item";
                    item.style.background = "#e0e7ff";
                    item.innerHTML = `
                        <div class="history-avatar"><img src="images/avatar.jpg"></div>
                        <div class="history-content">
                            <div class="history-name">${u.name} (${u.username})</div>
                            <div class="history-preview">Nhấn để bắt đầu trò chuyện</div>
                        </div>
                    `;
                    item.onclick = () => {
                        fetch("http://localhost:8000/start_conversation", {
                            method: "POST",
                            headers: { "Content-Type": "application/json" },
                            body: JSON.stringify({ user1: username, user2: u.username })
                        })
                        .then(res => res.json())
                        .then(data => {
                            openConversation(data.conversation_id, u.name || u.username, 'images/avatar.jpg');
                            loadConversations();
                        });
                    };
                    chatHistoryList.appendChild(item);
                });
            });
    });

    function formatTime(isoString) {
        if (!isoString) return "";
        const date = new Date(isoString);
        const hours = date.getHours().toString().padStart(2, "0");
        const minutes = date.getMinutes().toString().padStart(2, "0");
        const day = date.getDate().toString().padStart(2, "0");
        const month = (date.getMonth() + 1).toString().padStart(2, "0");
        const year = date.getFullYear();
        return `${hours}:${minutes} · ${day}/${month}/${year}`;
    }

    // Khi login thành công -> lưu username và khởi tạo socket
    if (!username) {
        username = prompt("Nhập username đã đăng nhập:");
        sessionStorage.setItem('username', username);
    }
    openUserSocket();
    loadConversations();
});
