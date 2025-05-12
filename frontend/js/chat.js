document.addEventListener('DOMContentLoaded', () => {
    const recipientAvatarElement = document.getElementById('recipientAvatar');
    const recipientNameElement = document.getElementById('recipientName');
    const recipientUserIdElement = document.getElementById('recipientUserId');
    const messagesArea = document.getElementById('messagesArea');
    const messageInput = document.getElementById('messageInput');
    const sendButton = document.getElementById('sendButton');
    const sendRequestBtn = document.getElementById('sendRequestBtn');
    const studyTimeModal = document.getElementById('studyTimeModal');
    const closeModal = document.getElementById('closeModal');
    const cancelSelection = document.getElementById('cancelSelection');
    const joinClassBtn = document.getElementById('joinClassBtn');
    const timeOptions = document.querySelectorAll('.time-option');
    const newChatButton = document.getElementById('newChatButton');
    const chatHistoryList = document.getElementById('chatHistoryList');

    // --- Function to set recipient details ---
    function setRecipientDetails(name, id, avatarSrc) {
        recipientNameElement.textContent = name;
        recipientUserIdElement.textContent = `#${id}`;
        
        // Try to use provided avatar or fallback to a default image
        if (avatarSrc) {
            recipientAvatarElement.src = avatarSrc;
        } else {
            // Try to use name-based image or fallback to default
            recipientAvatarElement.src = `images/${name}.png`;
            
            // Add error handler for avatar image
            recipientAvatarElement.onerror = function() {
                this.src = 'images/ảnh tutor 2.jpg'; // Fallback to default
                console.log('Fallback to default avatar image');
            };
        }
        
        recipientAvatarElement.alt = `${name} Avatar`;
    }

    function loadRecipientInfo() {
    const urlParams = new URLSearchParams(window.location.search);
    const userNameFromUrl = urlParams.get('user');
    const userIdFromUrl = urlParams.get('userId');

    if (userNameFromUrl) {
        const finalUserId = userIdFromUrl || userNameFromUrl.replace(/\s+/g, '').substring(0, 6).toUpperCase();
        setRecipientDetails(userNameFromUrl, finalUserId);
    } else {
        const dataStr = sessionStorage.getItem("chosenTeacherData");
        if (dataStr) {
            try {
                const data = JSON.parse(dataStr);
                if (data.name && data.teacher_id) {
                    setRecipientDetails(data.name, data.teacher_id);

                    // 🟢 Fetch thông tin chi tiết từ backend
                    fetch("/api/get_detail_teacher_info/", {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({ teacher_id: data.teacher_id })
                    })
                    .then(async (response) => {
                        console.log(`Teacher info API status: ${response.status}`);
                        if (!response.ok) {
                            const errorText = await response.text();
                            console.warn(`❌ API error: ${response.status} - ${errorText}`);
                            return;
                        }

                        const detailedInfo = await response.json();
                        console.log("✅ Received detailed teacher info:", detailedInfo);

                        // Ghi đè thông tin mới vào sessionStorage
                        sessionStorage.setItem("TeacherInformation", JSON.stringify(detailedInfo));

                        // Cập nhật lại giao diện nếu dữ liệu thay đổi
                        if (detailedInfo.name && detailedInfo.teacher_id) {
                            setRecipientDetails(detailedInfo.name, detailedInfo.teacher_id);
                        }
                    })
                    .catch(error => {
                        console.error("❌ Lỗi khi gọi API lấy thông tin giáo viên:", error);
                    });

                } else {
                    console.warn("Missing name or teacher_id in chosenTeacherData");
                    setRecipientDetails("Default Tutor", "DEFAULTID");
                }
            } catch (e) {
                console.error("Error parsing chosenTeacherData from sessionStorage", e);
                setRecipientDetails("Default Tutor", "DEFAULTID");
            }
        } else {
            console.warn("No chosenTeacherData found in sessionStorage. Using default.");
            setRecipientDetails("Default Tutor", "DEFAULTID");
        }
    }
}


    // Load recipient info when page loads
    loadRecipientInfo();

    // Function to add a message to the chat
    function addMessage(text, type = 'sent') {
        const bubble = document.createElement('div');
        bubble.className = `message-bubble message-${type}`;
        const content = document.createElement('span');
        content.textContent = text;
        const timestamp = document.createElement('span');
        timestamp.className = 'message-timestamp';
        timestamp.textContent = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
        bubble.appendChild(content);
        bubble.appendChild(timestamp);
        messagesArea.appendChild(bubble);
        messagesArea.scrollTop = messagesArea.scrollHeight; // Auto-scroll to bottom
    }

    // Handle sending messages
    async function sendMessageHandler() {
        const messageText = messageInput.value.trim();
        if (!messageText) return;

        addMessage(messageText, 'sent');
        messageInput.value = '';
        messageInput.focus(); // Keep focus on input

        try {
//            Uncomment this when your API is ready
            const teacher_info = sessionStorage.getItem("TeacherInformation")
            const response = await fetch("/api/chat_with_teacher/", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({
                    student_question: messageText,
                    teacher_info: teacher_info
                })
            });

            if (!response.ok) {
                let errorDetail = `HTTP error! Status: ${response.status}`;
                try {
                    const errorData = await response.json();
                    if (errorData && errorData.detail) {
                        if (Array.isArray(errorData.detail)) {
                            errorDetail = `Error: ${errorData.detail.map(e => `${e.loc.join('.')} - ${e.msg}`).join(', ')}`;
                        } else if (typeof errorData.detail === 'string') {
                            errorDetail = `Error: ${errorData.detail}`;
                        } else {
                            errorDetail = `Error: ${JSON.stringify(errorData.detail)}`;
                        }
                    } else {
                        errorDetail = await response.text();
                        if (!errorDetail.startsWith('Error:')) errorDetail = `Error: ${errorDetail}`;
                    }
                } catch (e) {
                    try {
                        errorDetail = await response.text();
                        if (!errorDetail.startsWith('Error:')) errorDetail = `Error: ${errorDetail}`;
                    } catch (finalError) {
                        errorDetail = response.statusText || errorDetail;
                        console.error("Could not parse or read error response body:", e, finalError);
                    }
                }
                console.error('API Error:', response.status, errorDetail);
                addMessage(`Sorry, there was an error sending the message to the tutor. ${errorDetail}`, 'received');
                return;
            }

            const data = await response.json();

            let botResponse = "Sorry, I couldn't understand the response.";
            if (typeof data === 'string' && data.trim() !== '') {
                botResponse = data;
            } else if (data && typeof data === 'object') {
                if (typeof data.response === 'string') {
                    botResponse = data.response;
                } else if (typeof data.teacher_response === 'string') {
                    botResponse = data.teacher_response;
                } else if (data.error) {
                    botResponse = `Sorry, the system encountered an error: ${data.error}`;
                } else {
                    console.warn('Unexpected response structure:', data);
                    botResponse = "Received an unexpected response format from the server.";
                }
            }

            addMessage(botResponse, 'received');

        } catch (error) {
            console.error("Fetch failed:", error);
            addMessage("Network error or the server is not responding. Please try again later.", 'received');
        }
    }

    // Setup study time modal
    let selectedTimes = {
        tuesday: null,
        thursday: null
    };

    function closeModalHandler() {
        studyTimeModal.classList.remove('active');
        // Clear selections when closing modal
        timeOptions.forEach(opt => opt.classList.remove('selected'));
        selectedTimes = { tuesday: null, thursday: null };
    }

    sendRequestBtn.addEventListener('click', () => {
        studyTimeModal.classList.add('active');
    });

    closeModal.addEventListener('click', closeModalHandler);
    cancelSelection.addEventListener('click', closeModalHandler);

    timeOptions.forEach(option => {
        option.addEventListener('click', () => {
            const day = option.getAttribute('data-day');
            const time = option.getAttribute('data-time');

            // Deselect other options for the same day
            document.querySelectorAll(`.time-option[data-day="${day}"]`).forEach(opt => {
                if (opt !== option) {
                    opt.classList.remove('selected');
                }
            });

            // Toggle selection for the clicked option
            if (option.classList.contains('selected')) {
                option.classList.remove('selected');
                selectedTimes[day] = null; // Remove selection
            } else {
                option.classList.add('selected');
                selectedTimes[day] = time; // Set selection
            }

            console.log("Selected times:", selectedTimes);
        });
    });

    joinClassBtn.addEventListener('click', () => {
        const selectedCount = Object.values(selectedTimes).filter(Boolean).length;

        if (selectedCount > 0) {
            const params = new URLSearchParams();
            if (selectedTimes.tuesday) {
                params.append('tuesdayTime', selectedTimes.tuesday);
            }
            if (selectedTimes.thursday) {
                params.append('thursdayTime', selectedTimes.thursday);
            }
            params.append('tutorName', recipientNameElement.textContent);
            params.append('tutorId', recipientUserIdElement.textContent.substring(1));

            window.location.href = `schedule.html?${params.toString()}`;
            closeModalHandler();
        } else {
            alert('Please select at least one study time slot.');
        }
    });

    // Event Listeners
    sendButton.addEventListener('click', sendMessageHandler);
    
    messageInput.addEventListener('keypress', (e) => {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault();
            sendMessageHandler();
        }
    });

    window.addEventListener('click', (e) => {
        if (e.target === studyTimeModal) {
            closeModalHandler();
        }
    });

    // Example of adding a chat history item (for demo purposes)
    newChatButton.addEventListener('click', () => {
        alert("This would normally open a user selection interface. For demo purposes, refreshing the page will reset the chat.");
    });
});