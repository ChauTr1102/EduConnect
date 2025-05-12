document.addEventListener('DOMContentLoaded', () => {

    // --- Floating Action Buttons & Modals ---
    const chatBtn = document.getElementById('chatBtn');
    const postBtn = document.getElementById('postBtn');
    const chatInterface = document.getElementById('chatInterface');
    const closeChat = document.getElementById('closeChat');
    const postModal = document.getElementById('postModal');
    const closeModal = document.getElementById('closeModal');
    const newPostForm = document.getElementById('newPostForm');
    const postContent = document.getElementById('postContent');
    const submitPost = document.getElementById('submitPost');
    const postSuccess = document.getElementById('postSuccess');

    // --- Chat Interface Elements ---
    const chatMessages = document.getElementById('chatMessages');
    const messageInput = document.getElementById('messageInput'); // Input inside the chat interface
    const sendMessage = document.getElementById('sendMessage'); // Send button inside the chat interface

    // --- Account Dropdown ---
    const accountContainer = document.querySelector('.account-container');
    const accountIcon = document.querySelector('.account-icon');
    const accountDropdown = document.querySelector('.account-dropdown');

    // --- Message List & Pagination (Placeholders - requires data fetching) ---
    const messageListContainer = document.getElementById('messageListContainer');
    const paginationControls = document.getElementById('paginationControls');

    // --- Event Listener: Toggle Chat Interface ---
    if (chatBtn && chatInterface && closeChat) {
        chatBtn.addEventListener('click', () => {
            chatInterface.classList.toggle('active'); // Add/remove 'active' class to show/hide
            if (chatInterface.classList.contains('active')) {
                messageInput.focus(); // Focus input when chat opens
            }
        });

        closeChat.addEventListener('click', () => {
            chatInterface.classList.remove('active');
        });
    } else {
        console.error('Chat button, interface, or close button not found.');
    }

    // --- Event Listener: Toggle Post Modal ---
    if (postBtn && postModal && closeModal) {
        postBtn.addEventListener('click', () => {
            postModal.style.display = 'block';
            postSuccess.style.display = 'none'; // Hide success message when opening
            postContent.value = ''; // Clear textarea
        });

        closeModal.addEventListener('click', () => {
            postModal.style.display = 'none';
        });

        // Close modal if clicked outside of it
        window.addEventListener('click', (event) => {
            if (event.target === postModal) {
                postModal.style.display = 'none';
            }
        });
    } else {
        console.error('Post button or modal elements not found.');
    }

    // --- Event Listener: Handle New Post Submission ---
    if (submitPost && newPostForm && postContent && postSuccess) {
        submitPost.addEventListener('click', async (event) => {
            event.preventDefault(); // Prevent default form submission
            const content = postContent.value.trim();

            if (!content) {
                alert('Please enter something in the post.');
                return;
            }

            // **Placeholder for API call to submit the post**
            console.log('Submitting post:', content);
            // Example:
            // try {
            //   const response = await fetch('/api/posts', {
            //     method: 'POST',
            //     headers: { 'Content-Type': 'application/json' },
            //     body: JSON.stringify({ content: content })
            //   });
            //   if (response.ok) {
            //     postSuccess.style.display = 'block'; // Show success message
            //     postContent.value = ''; // Clear the textarea
            //     // Optionally close the modal after a delay
            //     // setTimeout(() => { postModal.style.display = 'none'; }, 2000);
            //     // TODO: Refresh the message list if needed
            //   } else {
            //     alert('Failed to submit post. Please try again.');
            //   }
            // } catch (error) {
            //   console.error('Error submitting post:', error);
            //   alert('An error occurred while submitting the post.');
            // }

            // **Simulated Success for Demo**
            postSuccess.style.display = 'block';
            postContent.value = '';
             // Hide success message after a few seconds
            setTimeout(() => {
                postSuccess.style.display = 'none';
                // Optionally close modal here too
                // postModal.style.display = 'none';
             }, 3000);

        });
    } else {
        console.error('Post form elements not found.');
    }


    // --- Event Listener: Handle Chat Message Sending ---
     if (sendMessage && messageInput && chatMessages) {
        const handleSendMessage = async () => {
            const messageText = messageInput.value.trim();
            if (!messageText) return; // Don't send empty messages

            // 1. Display user's message
            displayChatMessage(messageText, 'user');
            messageInput.value = ''; // Clear input field
            messageInput.focus();

            // 2. **Placeholder for API call to the GENERAL chatbot**
            // This is where you would send `messageText` to your backend chatbot API
            // and wait for a response.
            console.log("Sending to chatbot API:", messageText);
            try {
                // Example API call structure (replace with your actual endpoint)
                // const response = await fetch('/api/general-chatbot', {
                //     method: 'POST',
                //     headers: { 'Content-Type': 'application/json' },
                //     body: JSON.stringify({ message: messageText })
                // });
                // if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
                // const data = await response.json();
                // const botReply = data.reply || "Sorry, I didn't get that.";

                // **Simulated Bot Response (Remove when API is ready)**
                await new Promise(resolve => setTimeout(resolve, 500)); // Simulate network delay
                const botReply = `You said: "${messageText}". I am a basic bot.`;
                // End Simulation

                // 3. Display bot's response
                 displayChatMessage(botReply, 'bot');

            } catch (error) {
                console.error("Error sending/receiving chat message:", error);
                displayChatMessage("Sorry, I couldn't connect to the chat service right now.", 'bot');
            }
        };

        sendMessage.addEventListener('click', handleSendMessage);

        messageInput.addEventListener('keypress', (event) => {
            // Send message on Enter key, but not Shift+Enter
            if (event.key === 'Enter' && !event.shiftKey) {
                event.preventDefault(); // Prevent newline in input
                handleSendMessage();
            }
        });
    } else {
       console.error('Chat message input or send button not found.');
    }

    // --- Helper Function: Display Chat Message ---
    function displayChatMessage(text, type) { // type can be 'user' or 'bot'
        const messageDiv = document.createElement('div');
        messageDiv.classList.add('message', type === 'user' ? 'user-message' : 'bot-message'); // Use appropriate classes

        const avatarDiv = document.createElement('div');
        avatarDiv.classList.add('message-avatar');
        avatarDiv.textContent = type === 'user' ? '👤' : '🤖'; // Simple avatars

        const contentDiv = document.createElement('div');
        contentDiv.classList.add('message-content');
        const p = document.createElement('p');
        p.textContent = text;
        contentDiv.appendChild(p);

        messageDiv.appendChild(avatarDiv);
        messageDiv.appendChild(contentDiv);

        chatMessages.appendChild(messageDiv);
        chatMessages.scrollTop = chatMessages.scrollHeight; // Scroll to the latest message
    }

    // --- Event Listener: Toggle Account Dropdown ---
    if (accountIcon && accountDropdown && accountContainer) {
        accountIcon.addEventListener('click', (event) => {
            event.stopPropagation(); // Prevent click from immediately closing dropdown
            accountDropdown.classList.toggle('show'); // Add/remove 'show' class
        });

        // Close dropdown if clicked outside
        window.addEventListener('click', (event) => {
            if (!accountContainer.contains(event.target)) {
                accountDropdown.classList.remove('show');
            }
        });
    } else {
        console.error('Account dropdown elements not found.');
    }

    // --- Load Initial Messages/Posts (Example Structure) ---
    function loadMessages(page = 1) {
        console.log(`Loading messages for page ${page}`);
        // **Placeholder for API call to fetch posts/messages**
        // fetch(`/api/messages?page=${page}`)
        //   .then(response => response.json())
        //   .then(data => {
        //      renderMessages(data.messages);
        //      renderPagination(data.totalPages, data.currentPage);
        //   })
        //   .catch(error => console.error('Error loading messages:', error));

        // **Simulated Data for Demo**
        const demoMessages = [
            { id: 1, user: 'Alice', avatar: 'images/avatar1.png', content: 'Looking for a calculus tutor for Tuesday evenings.', time: '2 hours ago' },
            { id: 2, user: 'Bob', avatar: 'images/avatar2.png', content: 'Can anyone help me understand Python list comprehensions?', time: '5 hours ago' },
            { id: 3, user: 'Charlie', avatar: 'images/avatar3.png', content: 'Need guidance on writing a history essay about the Cold War.', time: '1 day ago' }
        ];
        if (page === 1) { // Only show demo data on page 1 for simplicity
             renderMessages(demoMessages);
             renderPagination(3, 1); // Simulate 3 total pages, currently on page 1
        } else {
            messageListContainer.innerHTML = '<p>No more messages on this page (Demo).</p>';
             renderPagination(3, page);
        }
    }

    function renderMessages(messages) {
         if (!messageListContainer) return;
        messageListContainer.innerHTML = ''; // Clear previous messages
        if (!messages || messages.length === 0) {
            messageListContainer.innerHTML = '<p>No posts found.</p>';
            return;
        }
        messages.forEach(msg => {
            const card = document.createElement('div');
            card.className = 'message-card'; // Add a class for styling
            card.innerHTML = `
                <div class="message-card-header">
                    <img src="${msg.avatar}" alt="${msg.user}" class="message-card-avatar" onerror="this.src='images/default-avatar.png';">
                    <span class="message-card-user">${msg.user}</span>
                    <span class="message-card-time">${msg.time}</span>
                </div>
                <div class="message-card-body">
                    <p>${msg.content}</p>
                </div>
                <div class="message-card-actions">
                    <button class="action-btn like-btn"><i class="far fa-heart"></i> Like</button>
                    <button class="action-btn comment-btn"><i class="far fa-comment"></i> Comment</button>
                    <button class="action-btn share-btn"><i class="fas fa-share"></i> Share</button>
                </div>
            `;
            messageListContainer.appendChild(card);
        });
    }

    function renderPagination(totalPages, currentPage) {
        if (!paginationControls) return;
        paginationControls.innerHTML = ''; // Clear previous controls

        if (totalPages <= 1) return; // No pagination needed for 1 or fewer pages

        // Previous Button
        const prevButton = document.createElement('button');
        prevButton.textContent = '« Prev';
        prevButton.disabled = currentPage === 1;
        prevButton.addEventListener('click', () => loadMessages(currentPage - 1));
        paginationControls.appendChild(prevButton);

        // Page Numbers (simplified version)
        for (let i = 1; i <= totalPages; i++) {
            const pageButton = document.createElement('button');
            pageButton.textContent = i;
            pageButton.disabled = i === currentPage;
            if (i === currentPage) {
                pageButton.classList.add('active'); // Style the current page button
            }
            pageButton.addEventListener('click', () => loadMessages(i));
            paginationControls.appendChild(pageButton);
        }

        // Next Button
        const nextButton = document.createElement('button');
        nextButton.textContent = 'Next »';
        nextButton.disabled = currentPage === totalPages;
        nextButton.addEventListener('click', () => loadMessages(currentPage + 1));
        paginationControls.appendChild(nextButton);
    }

    // --- Initial Load ---
    loadMessages(1); // Load the first page of messages/posts

});