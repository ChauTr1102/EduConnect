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

    // --- Function to set recipient details ---
    function setRecipientDetails(name, id, avatarSrc ) { // Added avatar parameter
        recipientNameElement.textContent = name;
        recipientUserIdElement.textContent = `#${id}`;
        recipientAvatarElement.src = `images/${name}.png`; // Set avatar source
         recipientAvatarElement.alt = `${name} Avatar`; // Update alt text
    }

    // --- Get recipient info: Priority to URL param, fallback to JSON ---
    const urlParams = new URLSearchParams(window.location.search);
    const userNameFromUrl = urlParams.get('user');
    const userIdFromUrl = urlParams.get('userId'); // Check for userId in URL too

    if (userNameFromUrl) {
        // If 'user' is in URL, use it (potentially get ID from URL too or generate)
        const finalUserId = userIdFromUrl || userNameFromUrl.replace(/\s+/g, '').substring(0, 6).toUpperCase();
        setRecipientDetails(userNameFromUrl, finalUserId);
        // You might want to fetch the correct avatar based on userNameFromUrl/userIdFromUrl if possible
    } else {
        // If 'user' is NOT in URL, fetch from chosen_teacher.json
        fetch('chosen_teacher.json') // <<< Make sure this path is correct
            .then(response => {
                if (!response.ok) {
                    throw new Error(`HTTP error! Status: ${response.status}. Could not load chosen_teacher.json`);
                }
                return response.json(); // Parse the JSON response
            })
            .then(data => {
                if (data && data.name && data.teacher_id) {
                    // Use data from JSON
                    setRecipientDetails(data.name, data.teacher_id);
                    // Optional: Update avatar based on teacher_id if you have a mapping or image naming convention
                     // e.g., recipientAvatarElement.src = `images/tutors/${data.teacher_id}.jpg`;
                } else {
                    console.warn("chosen_teacher.json loaded but is missing 'name' or 'teacher_id'. Using default.");
                    setRecipientDetails("Default Tutor", "DEFAULTID"); // Fallback if JSON is invalid
                }
            })
            .catch(error => {
                console.error('Error fetching or parsing chosen_teacher.json:', error);
                setRecipientDetails("Tutor Error", "ERRORID"); // Fallback on fetch error
                addMessage("Could not load tutor information. Please try again later.", 'received');
            });
    }

    // 3. Hàm tạo tin nhắn
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

    // 4. Gửi tin nhắn và gọi API
    async function sendMessageHandler() {
        const messageText = messageInput.value.trim();
        if (!messageText) return;

        addMessage(messageText, 'sent');
        messageInput.value = '';
        messageInput.focus(); // Keep focus on input

        try {
            // **IMPORTANT**: Replace with your actual API endpoint for sending messages
            const response = await fetch("/api/chat_with_teacher/", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                    // Add any necessary authentication headers (tokens) here
                },
                body: JSON.stringify({
                    student_question: messageText,
                    // Optional: Send recipient ID if your backend needs it
                    // teacher_id: recipientUserIdElement.textContent.substring(1) // Remove '#'
                })
            });

            // --- HANDLE ERROR ---
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
                addMessage(`Sorry, there was an error sending the message to the tutor. ${errorDetail}`, 'received'); // Corrected Vietnamese
                return;
            }

            // --- HANDLE SUCCESS ---
            const data = await response.json();

            let botResponse = "Sorry, I couldn't understand the response."; // Default response
            if (typeof data === 'string' && data.trim() !== '') {
                 botResponse = data; // Backend returns string directly
            } else if (data && typeof data === 'object') {
                if (typeof data.response === 'string') {
                   botResponse = data.response; // Standard {"response": "..."}
                } else if (typeof data.teacher_response === 'string') {
                    botResponse = data.teacher_response; // Alternative key
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
            addMessage("Network error or the server is not responding. Please try again later.", 'received'); // Corrected Vietnamese
        }
    }


    // 5. Giao diện chọn giờ học
    sendRequestBtn.addEventListener('click', () => {
        studyTimeModal.classList.add('active');
    });

    function closeModalHandler() {
        studyTimeModal.classList.remove('active');
        // Clear selections when closing modal
        timeOptions.forEach(opt => opt.classList.remove('selected'));
        selectedTimes = { tuesday: null, thursday: null };
    }
    closeModal.addEventListener('click', closeModalHandler);
    cancelSelection.addEventListener('click', closeModalHandler);

    let selectedTimes = {
        tuesday: null,
        thursday: null
    };

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

            console.log("Selected times:", selectedTimes); // For debugging
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
            // Optionally add tutor info to the schedule page URL
            params.append('tutorName', recipientNameElement.textContent);
            params.append('tutorId', recipientUserIdElement.textContent.substring(1)); // Remove '#'

            window.location.href = `schedule.html?${params.toString()}`;
            closeModalHandler(); // Close modal after redirecting
        } else {
            alert('Please select at least one study time slot.');
        }
    });

    // 6. Gửi khi nhấn nút hoặc nhấn Enter
    sendButton.addEventListener('click', sendMessageHandler);
    messageInput.addEventListener('keypress', (e) => {
        if (e.key === 'Enter' && !e.shiftKey) { // Send on Enter, allow Shift+Enter for newline
            e.preventDefault(); // Prevent default form submission/newline
            sendMessageHandler();
        }
    });

    // 7. Đóng modal khi click ra ngoài backdrop
    window.addEventListener('click', (e) => {
        if (e.target === studyTimeModal) {
            closeModalHandler();
        }
    });

    // Add a welcome message or initial state message if desired
    // addMessage("Hello! How can I help you today?", 'received');

});