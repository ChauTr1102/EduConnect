// --- DOM Element Selection ---
const chatMessages = document.querySelector('.chat-messages');
const textarea = document.querySelector('.chat-input');
const sendButton = document.querySelector('.send-button');

// --- API Configuration ---
const apiEndpoint = 'http://127.0.0.1:8000/chat_get-answer/';

// --- Helper Functions ---

/**
 * Removes all messages from the chat window.
 */
function clearMessages() {
    chatMessages.innerHTML = '';
}

/**
 * Displays a typing indicator with a spinner in the chat window.
 */
function showTypingIndicator() {
    // Avoid adding multiple indicators
    if (!document.getElementById('typing-indicator')) {
        const typingHTML = `
            <div class="typing-indicator" id="typing-indicator">
                 <div class="message-avatar"> <!-- Placeholder for alignment -->
                    <img src="images/Educonnect_logo.png" alt="AI Avatar">
                 </div>
                <div class="spinner-container">
                    <div class="spinner"></div>
                    <div class="typing-text">EduconnectGPT is thinking...</div>
                </div>
            </div>
        `;
        chatMessages.insertAdjacentHTML('beforeend', typingHTML);
        // Scroll to show the indicator
        chatMessages.scrollTop = chatMessages.scrollHeight;
    }
}

/**
 * Removes the typing indicator from the chat window.
 */
function hideTypingIndicator() {
    const typingIndicator = document.getElementById('typing-indicator');
    if (typingIndicator) {
        typingIndicator.remove();
    }
}

/**
 * Adds a message to the chat interface.
 * @param {string} text - The message text.
 * @param {'user' | 'ai' | 'system'} sender - The sender type ('user', 'ai', or 'system').
 */
function addMessage(text, sender) {
    const currentTime = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
    const avatarSrc = sender === 'ai' ? 'images/Educonnect_logo.png' : 'images/user_avatar.png'; // Assuming a default user avatar
    const avatarAlt = sender === 'ai' ? 'AI Avatar' : 'User Avatar';
    const messageClass = sender === 'ai' ? 'ai' : (sender === 'user' ? 'user' : 'system'); // Add 'system' class if needed

    const sanitizedText = text.replace(/</g, "<").replace(/>/g, ">"); // Basic XSS prevention
    const formattedText = sanitizedText.replace(/\n/g, '<br>');

    const messageHTML = `
        <div class="message ${messageClass}">
            <div class="message-avatar">
                <img src="${avatarSrc}" alt="${avatarAlt}">
            </div>
            <div class="message-content">
                <div>${formattedText}</div> <!-- Use innerHTML for <br> tags -->
                <div class="message-time">${currentTime}</div>
            </div>
        </div>
    `;

    chatMessages.insertAdjacentHTML('beforeend', messageHTML);
    chatMessages.scrollTop = chatMessages.scrollHeight; // Scroll to the bottom
}

// --- Main Chat Logic ---

/**
 * Sends the user's message to the backend API and displays the response.
 */
async function sendMessage() {
    const userInput = textarea.value.trim();
    if (userInput === '') {
        return; // Don't send empty messages
    }

    // Add user message to UI immediately
    addMessage(userInput, 'user');
    textarea.value = ''; // Clear input field
    textarea.style.height = 'auto'; // Reset textarea height

    // Show typing indicator while waiting
    showTypingIndicator();

    try {
        // --- Call the FastAPI endpoint ---
        const response = await fetch(apiEndpoint, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json' // Still good practice to accept JSON, even if we expect a string sometimes
            },
            // Send the message in the format expected by the Pydantic model: { "message": "..." }
            body: JSON.stringify({ message: userInput })
        });

        hideTypingIndicator();

        if (!response.ok) {
            let errorDetail = `HTTP error! Status: ${response.status}`;
            try {
                const errorData = await response.json();
                if (errorData && errorData.detail) {
                   if (Array.isArray(errorData.detail)) {
                        errorDetail = `Error: ${errorData.detail.map(e => `${e.loc.join('.')} - ${e.msg}`).join(', ')}`;
                    } else if (typeof errorData.detail === 'string'){
                        errorDetail = `Error: ${errorData.detail}`; // Handle FastAPI detail string
                    } else {
                       errorDetail = `Error: ${JSON.stringify(errorData.detail)}`; // Handle other detail types
                    }
                } else {
                   errorDetail = await response.text(); // Fallback to plain text error
                   // If the error response IS the detail string itself (common with HTTPException)
                   if (!errorDetail.startsWith('Error:')) errorDetail = `Error: ${errorDetail}`;
                }
            } catch (e) {
                 try {
                     // If parsing as JSON fails, try getting the raw text
                     errorDetail = await response.text();
                     if (!errorDetail.startsWith('Error:')) errorDetail = `Error: ${errorDetail}`;
                 } catch (finalError) {
                     // If getting text also fails, use statusText
                     errorDetail = response.statusText || errorDetail;
                     console.error("Could not parse or read error response body:", e, finalError);
                 }
            }
            console.error('API Error:', response.status, errorDetail);
            addMessage(`Sorry, there was an issue communicating with the chatbot. ${errorDetail}`, 'ai'); // Display error to user
            return;
        }

        // --- Process the successful response ---
        // Since the backend returns a plain string, response.json() will parse it into a JS string.
        const data = await response.json();

        // --- MODIFIED HANDLING ---
        // Check if the data received IS a string (the AI response)
        if (typeof data === 'string' && data.trim() !== '') {
            const aiResponse = data; // The data itself is the response string
            addMessage(aiResponse, 'ai'); // Add the actual AI response
        }
        // Optional: Keep a check for structured errors IF your backend might sometimes return them
        else if (data && typeof data === 'object' && data.error) {
            console.error('API returned a structured error:', data.error);
            addMessage(`Sorry, the chatbot encountered an issue: ${data.error}`, 'ai');
        }
         else {
            // Handle cases where the 'response' key is missing or not a string
            console.error('API Response missing or invalid "response" key:', data);
            addMessage("Sorry, I received an unexpected response format from the chatbot.", 'ai');
        }

    } catch (error) {
        hideTypingIndicator();
        console.error('Fetch Error:', error);
        // Distinguish network errors from other potential issues
        let errorMessage = "An unexpected error occurred while trying to send your message. Please try again.";
        if (error instanceof TypeError && error.message.includes('fetch')) {
           errorMessage = "Sorry, I couldn't connect to the chatbot service. Please ensure it's running and reachable.";
        }
        addMessage(errorMessage, 'ai');
    }
}


// --- Event Listeners Setup ---
// (Keep the rest of your JavaScript code as it was, including event listeners setup)
document.addEventListener('DOMContentLoaded', function() {
    // Clear any previous messages on load (optional)
    clearMessages();

    // Add an initial welcome message from the AI
    addMessage("Hello! I'm EduconnectGPT, powered by Gemini. How can I assist you with your educational queries today?", 'ai');

    // Send message when the send button is clicked
    sendButton.addEventListener('click', sendMessage);

    // Send message when Enter is pressed in the textarea (but not Shift+Enter)
    textarea.addEventListener('keydown', function(e) {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault(); // Prevent adding a newline character
            sendMessage();
        }
    });

    // Auto-resize textarea based on content, up to a max height
    textarea.addEventListener('input', function() {
        this.style.height = 'auto'; // Reset height to calculate scrollHeight correctly
        const maxHeight = 100; // Define a maximum height in pixels
        // Set height based on content, but cap it at maxHeight
        this.style.height = Math.min(this.scrollHeight, maxHeight) + 'px';
    });

    // --- Agent Switching Logic (Visual Only) ---
    const agentItems = document.querySelectorAll('.sidebar .agent-item');
    agentItems.forEach(item => {
        item.addEventListener('click', function(event) {
             // Only handle clicks on items that are *not* links meant to navigate away
             // or handle links differently if needed (e.g., prevent default and do something first)
             if (item.closest('a')) {
                 // If it's a link, let the browser handle navigation
                 // You could add logic here *before* navigation if needed
                 console.log(`Navigating via link for: ${item.querySelector('.agent-name').textContent}`);
                 return;
             }

            // Remove 'selected' class from all items
            agentItems.forEach(i => i.classList.remove('selected'));
            // Add 'selected' class to the clicked item
            this.classList.add('selected');
            // Optional logic here
        });
    });

    const defaultSelectedAgent = document.querySelector('.agent-item.selected');
    if (!defaultSelectedAgent) {
         const mainAgent = document.getElementById('main-agent');
         if(mainAgent) mainAgent.classList.add('selected');
    }
});
