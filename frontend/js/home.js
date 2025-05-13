document.addEventListener('DOMContentLoaded', function() {
    // --- DOM Elements ---
    const searchBar = document.querySelector('.search-bar');
    const searchBtn = document.querySelector('.search-btn');
    const postBtn = document.getElementById('postBtn');
    const postModal = document.getElementById('postModal');
    const modalContent = postModal.querySelector('.modal-content'); // More specific selector
    const closeModalBtn = document.getElementById('closeModal');
    const chatBtn = document.getElementById('chatBtn');
    const chatInterface = document.getElementById('chatInterface');
    const closeChatBtn = document.getElementById('closeChat');
    const messageInputChat = document.getElementById('messageInput');
    const sendMessageChat = document.getElementById('sendMessage');
    const chatMessages = document.getElementById('chatMessages');
    const newPostForm = document.getElementById('newPostForm');
    const postContentInput = document.getElementById('postContent');
    const submitPostBtn = document.getElementById('submitPost');
    const messageListContainer = document.getElementById('messageListContainer'); // Use the ID added to HTML
    const paginationControls = document.getElementById('paginationControls');
    const postSuccessMsg = document.getElementById('postSuccess');
    const matchButton = document.getElementById('matchButton'); // Get the Match button

    // --- State Variables ---
    let allPostsData = [];
    let currentPage = 1;
    const postsPerPage = 4; // Number of posts per page

    // --- Default Config ---
    const placeholderAvatar = 'avatar-placeholder.png';
    
    // --- Fetch Posts Function ---
    async function fetchPosts() {
        try {
            // Replace with your actual backend endpoint
            const response = await fetch('/api/return_user_posts/', {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                    // Add any authentication headers if needed
                    // 'Authorization': `Bearer ${yourAuthToken}`
                }
            });

            if (!response.ok) {
                throw new Error('Network response was not ok');
            }

            const posts = await response.json();

            // Validate and transform posts to match expected structure
            const formattedPosts = posts.map(post => ({
                id: post.id || Date.now(), // Ensure unique ID
                user: post.user || "Anonymous", 
                avatar: post.avatar || placeholderAvatar, 
                time: post.time || "Recently", 
                content: post.content || "No content provided"
            }));

            // Update global posts data and display
            allPostsData = [...formattedPosts].reverse();
            displayPage(1);
        } catch (error) {
            console.error('Error fetching posts:', error);
            
            // Show user-friendly error message
            messageListContainer.innerHTML = `
                <div class="error-message">
                    <p>Unable to load posts. Please try again later.</p>
                    <p>Error: ${error.message}</p>
                </div>
            `;
            paginationControls.innerHTML = '';
        }
    }

    // Function to add a post refresh button
    function addPostRefreshButton() {
        const refreshButton = document.createElement('button');
        refreshButton.textContent = 'Refresh Posts';
        refreshButton.classList.add('refresh-posts-btn');
        refreshButton.addEventListener('click', fetchPosts);

        // Add this button to the pagination controls
        if (paginationControls) {
            paginationControls.appendChild(refreshButton);
        }
    }
    // --- Functions ---

    function renderPostCard(postData) {
        const card = document.createElement('div');
        card.className = 'message-card';
        card.dataset.postId = postData.id || Date.now(); // Use provided ID or generate one

        const userName = postData.user || "User";
        const userAvatar = postData.avatar || placeholderAvatar;
        const postTime = postData.time || "Recently";
        const postText = (postData.content || "No content")
                            .replace(/</g, "&lt;") // More robust sanitization
                            .replace(/>/g, "&gt;")
                            .replace(/\n/g, '<br>');

        // Get suggested tutors from API or use a simple default
        const suggestedTutors = [
            { name: "Available Tutor 1", description: "Contact for details", avatar: placeholderAvatar },
            { name: "Available Tutor 2", description: "Contact for details", avatar: placeholderAvatar }
        ];

        card.innerHTML = `
            <div class="message-header">
                <div class="user-avatar">
                <img src="${userAvatar}" alt="${userName}" onerror="this.onerror=null;this.src='${placeholderAvatar}';">
                </div>
                <div class="user-info"><h3>${userName}</h3><p class="message-time">${postTime}</p></div>
                <button class="message-btn icon-btn tutor-menu-trigger" title="Show Suggested Tutors">
                    <i class="fas fa-ellipsis-v"></i>
                </button>
            </div>
            <div class="message-content"><p>${postText}</p></div>
            <div class="message-actions">
                <button class="message-btn like-btn"><i class="far fa-thumbs-up"></i> Like</button>
                <button class="message-btn comment-trigger-btn"><i class="far fa-comment"></i> Comment</button>
                <div class="spacer"></div>
                <!-- Changed from anchor to button with distinctive class -->
                <button class="message-btn send-message-btn"><i class="far fa-paper-plane"></i> Send message</button>
                <button class="message-btn">Send Request</button>
            </div>
            <div class="comment-section">
                <div class="comments-display-area"></div>
                <div class="comment-input-area">
                    <textarea class="comment-input" placeholder="Write a comment..." rows="1"></textarea>
                    <button class="message-btn post-comment-btn">Post</button>
                </div>
            </div>
            <div class="tutor-list-dropdown">
                <ul>
                    ${suggestedTutors.map(tutor => `
                        <li>
                            <div class="tutor-item-container">
                                <div class="tutor-avatar-dropdown">
                                    <img src="${tutor.avatar || placeholderAvatar}" alt="${tutor.name}" onerror="this.onerror=null;this.src='${placeholderAvatar}';">
                                </div>
                                <div class="tutor-details-actions-wrapper">
                                    <div class="tutor-info-dropdown">
                                        <a href="#" class="tutor-name" title="${tutor.name}">${tutor.name}</a>
                                        <p class="tutor-description">${tutor.description}</p>
                                    </div>
                                    <div class="tutor-item-actions">
                                        <a href="chat.html?user=${encodeURIComponent(tutor.name)}&avatar=${encodeURIComponent(tutor.avatar || placeholderAvatar)}" class="message-btn tutor-msg-btn" style="text-decoration: none;">Message</a>
                                        <button class="message-btn tutor-req-btn">Request</button>
                                    </div>
                                </div>
                            </div>
                        </li>
                    `).join('')}
                </ul>
            </div>`;
        const commentInput = card.querySelector('.comment-input');
        if (commentInput) {
            commentInput.addEventListener('input', autoResizeTextarea);
        }
        return card;
    }

    function autoResizeTextarea(event) {
        const textarea = event.target;
        textarea.style.height = 'auto';
        textarea.style.height = textarea.scrollHeight + 'px';
    }

    function displayPage(page) {
        currentPage = page;
        messageListContainer.innerHTML = '';
        const startIndex = (page - 1) * postsPerPage;
        const endIndex = startIndex + postsPerPage;
        const postsToShow = allPostsData.slice(startIndex, endIndex);
        postsToShow.forEach(postData => {
            const cardElement = renderPostCard(postData);
            messageListContainer.appendChild(cardElement);
        });
        renderPaginationControls();
    }

    function renderPaginationControls() {
        if (!paginationControls) return;
        paginationControls.innerHTML = '';
        const totalPages = Math.ceil(allPostsData.length / postsPerPage);
        if (totalPages <= 1) return;

        // Previous button
        const prevButton = document.createElement('button');
        prevButton.className = 'page-item';
        prevButton.textContent = '«';
        prevButton.disabled = currentPage === 1;
        prevButton.onclick = () => { if (currentPage > 1) { displayPage(currentPage - 1); scrollToTop(); } };
        paginationControls.appendChild(prevButton);

        // Logic for which page buttons to show
        const showPageNums = [];
        
        // Always show first page
        showPageNums.push(1);
        
        // Logic for middle pages
        const maxVisiblePages = 5; // Maximum number of page numbers to show at once
        
        // Calculate range of pages to show around current page
        let startPage = Math.max(2, currentPage - 1);
        let endPage = Math.min(totalPages - 1, currentPage + 1);
        
        // Adjust if we're near the beginning
        if (currentPage <= 3) {
            endPage = Math.min(maxVisiblePages, totalPages - 1);
        }
        
        // Adjust if we're near the end
        if (currentPage >= totalPages - 2) {
            startPage = Math.max(2, totalPages - maxVisiblePages + 1);
        }
        
        // Add ellipsis after page 1 if needed
        if (startPage > 2) {
            showPageNums.push('...');
        }
        
        // Add middle page numbers
        for (let i = startPage; i <= endPage; i++) {
            showPageNums.push(i);
        }
        
        // Add ellipsis before last page if needed
        if (endPage < totalPages - 1) {
            showPageNums.push('...');
        }
        
        // Always show last page if there is more than one page
        if (totalPages > 1) {
            showPageNums.push(totalPages);
        }
        
        // Create and append the page buttons
        showPageNums.forEach(pageNum => {
            const pageButton = document.createElement('button');
            
            if (pageNum === '...') {
                // Create ellipsis (not clickable)
                pageButton.className = 'page-item ellipsis';
                pageButton.textContent = '...';
                pageButton.disabled = true;
            } else {
                // Create normal page button
                pageButton.className = `page-item ${pageNum === currentPage ? 'active' : ''}`;
                pageButton.textContent = pageNum;
                pageButton.onclick = () => { displayPage(pageNum); scrollToTop(); };
            }
            
            paginationControls.appendChild(pageButton);
        });

        // Next button
        const nextButton = document.createElement('button');
        nextButton.className = 'page-item';
        nextButton.textContent = '»';
        nextButton.disabled = currentPage === totalPages;
        nextButton.onclick = () => { if (currentPage < totalPages) { displayPage(currentPage + 1); scrollToTop(); } };
        paginationControls.appendChild(nextButton);
    }

    function scrollToTop() {
        messageListContainer.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }

    function handlePostSubmit() {
        const content = postContentInput.value.trim();
        if (!content) {
            alert("Please write something in your post.");
            return;
        }

        submitPostBtn.classList.add('posting');
        submitPostBtn.textContent = 'Posting...';
        submitPostBtn.disabled = true;
        if(matchButton) {
             matchButton.classList.add('posting'); // Also visually disable match button
             matchButton.style.pointerEvents = 'none'; // Prevent clicking match while posting
        }

        // Here you would normally post to your backend
        // For now we'll simulate it with a timeout
        setTimeout(() => {
            const newPostData = {
                user: "user",
                avatar: "images/user.jpg",
                time: "Just now",
                content: content,
                id: Date.now()
            };
            allPostsData.unshift(newPostData);
            displayPage(1);

            const firstCard = messageListContainer.querySelector('.message-card:first-child');
            if (firstCard) {
                firstCard.classList.add('new-post');
                setTimeout(() => firstCard.classList.remove('new-post'), 1500);
            }
            postSuccessMsg.classList.add('show');

            setTimeout(() => {
                modalContent.classList.remove('active');
                setTimeout(() => {
                    postModal.style.display = 'none';
                    postContentInput.value = '';
                    postSuccessMsg.classList.remove('show');
                    submitPostBtn.classList.remove('posting');
                    submitPostBtn.textContent = 'Post';
                    submitPostBtn.disabled = false;
                     if(matchButton) {
                        matchButton.classList.remove('posting'); // Re-enable match button
                        matchButton.style.pointerEvents = 'auto';
                     }
                }, 300);
            }, 1200);

        }, 800);
    }

    // --- Function to handle Match button click ---
    function handleMatchClick(event) {
        event.preventDefault(); // Prevent default <a> tag navigation

        const postText = postContentInput.value.trim();

        // Optional: Add validation if needed (e.g., require post text)
        if (!postText) {
            alert("Please write something in your post before matching.");
            return; // Stop if no content
        }

        // Add visual feedback
        matchButton.classList.add('posting'); // Reuse 'posting' style
        matchButton.textContent = 'Matching...';
        matchButton.style.pointerEvents = 'none'; // Prevent double clicks
        submitPostBtn.disabled = true; // Disable post button too


        // --- Trigger the FastAPI endpoint ---
        const recommenderUrl = '/api/recommender/';
        const userId = sessionStorage.getItem("user_id");
        console.log(`Calling Recommender API at: ${recommenderUrl} with content.`);
        data = {
            user_id:userId,
            student_request: postText
        };
        // Use fetch to send a POST request (adjust method if needed)
        fetch(recommenderUrl, {
            method: 'POST', // Or 'GET', 'PUT' depending on your API design
            headers: {
                'Content-Type': 'application/json', // Assuming your API expects JSON
                // Add any other headers like Authorization if required
            },
            body: JSON.stringify(data) // Send the post content
        })
        .then(async (response) => {
            console.log(`Recommender API call initiated. Status: ${response.status}`);
            if (!response.ok) {
                console.warn(`Recommender API returned status ${response.status}`);
                return;
            }

            const postId = await response.json();
//          const postId = resData.post_id;
            if (postId) {
                sessionStorage.setItem('selectedPostId', postId);
                console.log("Saved post_id to sessionStorage:", postId);
            } else {
                console.warn("No post_id received from API response.");
            }
        })
        .catch(error => {
            // This catches errors in *sending* the request (e.g., network down, CORS issues)
            console.error('Error sending request to recommender API:', error);
            // Still navigate even if the fetch initiation fails, as per requirement
        })
        .finally(() => {
             // --- Navigate to match.html REGARDLESS of API call success/failure ---
             // Use a tiny timeout to ensure the fetch request has been dispatched
             // by the browser before the page unloads.
             setTimeout(() => {
                console.log("Navigating to match.html");
                window.location.href = 'match.html';
             }, 100); // 100ms delay is usually sufficient
        });

        // IMPORTANT: Navigation happens inside the .finally() block after a short delay.
    }


    function handleLikeClick(likeButton) {
        likeButton.classList.toggle('liked');
        const icon = likeButton.querySelector('i');
        const isLiked = likeButton.classList.contains('liked');
        icon.className = isLiked ? 'fas fa-thumbs-up' : 'far fa-thumbs-up';
        likeButton.innerHTML = `<i class="${icon.className}"></i> ${isLiked ? 'Liked' : 'Like'}`;
    }

    function handleCommentToggle(commentTrigger) {
        const card = commentTrigger.closest('.message-card');
        const commentSection = card?.querySelector('.comment-section');
        if (commentSection) {
            commentSection.classList.toggle('active');
            if (commentSection.classList.contains('active')) {
                commentSection.querySelector('.comment-input').focus();
            }
        }
    }

    function handlePostComment(postButton) {
         const commentSection = postButton.closest('.comment-section');
         const commentInput = commentSection?.querySelector('.comment-input');
         const commentsDisplay = commentSection?.querySelector('.comments-display-area');
         const commentText = commentInput?.value.trim();

         if (commentText && commentsDisplay && commentInput) {
             const newComment = document.createElement('div');
             newComment.classList.add('comment-item');
             const commenterName = "You";
             const sanitizedComment = commentText
                                      .replace(/</g, "&lt;")
                                      .replace(/>/g, "&gt;")
                                      .replace(/\n/g, '<br>');
             newComment.innerHTML = `<strong>${commenterName}:</strong> ${sanitizedComment}`;
             commentsDisplay.appendChild(newComment);
             commentsDisplay.scrollTop = commentsDisplay.scrollHeight;
             commentInput.value = '';
             commentInput.style.height = 'auto';
         } else if (!commentText && commentInput) {
             commentInput.focus();
         }
    }

    function handleTutorMenuToggle(menuTrigger, event) {
        event.stopPropagation();
        const card = menuTrigger.closest('.message-card');
        const dropdown = card?.querySelector('.tutor-list-dropdown');
        if (dropdown) {
            const isActive = dropdown.classList.contains('active');
            document.querySelectorAll('.tutor-list-dropdown.active').forEach(dd => {
                if (dd !== dropdown) dd.classList.remove('active');
            });
            dropdown.classList.toggle('active');
        }
    }

    // --- Event Listeners ---

    messageListContainer.addEventListener('click', function(event) {
        const target = event.target;
        const likeBtn = target.closest('.like-btn');
        const commentTriggerBtn = target.closest('.comment-trigger-btn');
        const postCommentBtn = target.closest('.post-comment-btn');
        const tutorMenuBtn = target.closest('.tutor-menu-trigger');

        if (likeBtn) handleLikeClick(likeBtn);
        else if (commentTriggerBtn) handleCommentToggle(commentTriggerBtn);
        else if (postCommentBtn) handlePostComment(postCommentBtn);
        else if (tutorMenuBtn) handleTutorMenuToggle(tutorMenuBtn, event);
    });

    messageListContainer.addEventListener('keypress', function(event) {
        if (event.key === 'Enter' && !event.shiftKey && event.target.classList.contains('comment-input')) {
            event.preventDefault();
            const postButton = event.target.closest('.comment-input-area')?.querySelector('.post-comment-btn');
            if (postButton) handlePostComment(postButton);
        }
    });

    document.addEventListener('click', function(event) {
        if (!event.target.closest('.tutor-menu-trigger') && !event.target.closest('.tutor-list-dropdown')) {
            document.querySelectorAll('.tutor-list-dropdown.active').forEach(dd => dd.classList.remove('active'));
        }
    });

    searchBtn.addEventListener('click', () => {
        const searchTerm = searchBar.value.trim().toLowerCase();
        if (!searchTerm) {
            fetchPosts(); // Fetch all posts if search is empty
            return;
        }
        
        // Filter current posts - in a real app, you'd likely call the API with search params
        const filteredPosts = allPostsData.filter(post =>
            post.user.toLowerCase().includes(searchTerm) ||
            post.content.toLowerCase().includes(searchTerm)
        );
        
        if (filteredPosts.length === 0) {
            messageListContainer.innerHTML = '<p style="text-align: center; color: var(--light-text); padding: 2rem;">No posts found matching your search.</p>';
            paginationControls.innerHTML = '';
        } else {
            allPostsData = filteredPosts;
            displayPage(1);
        }
    });
    
    searchBar.addEventListener('keypress', (e) => { if (e.key === 'Enter') searchBtn.click(); });
    searchBar.addEventListener('input', () => { if (searchBar.value.trim() === '') { fetchPosts(); } });

    postBtn.addEventListener('click', () => {
        postModal.style.display = 'flex';
        setTimeout(() => modalContent.classList.add('active'), 10);
    });
    closeModalBtn.addEventListener('click', () => {
        modalContent.classList.remove('active');
        setTimeout(() => {
            postModal.style.display = 'none';
            postSuccessMsg.classList.remove('show');
            // Reset button states in case modal closed manually after clicking match/post
            submitPostBtn.classList.remove('posting');
            submitPostBtn.textContent = 'Post';
            submitPostBtn.disabled = false;
            if(matchButton) {
                matchButton.classList.remove('posting');
                matchButton.textContent = 'Match'; // Reset text
                matchButton.style.pointerEvents = 'auto';
            }
        }, 300);
    });
    window.addEventListener('click', (event) => { if (event.target === postModal) closeModalBtn.click(); });

    submitPostBtn.addEventListener('click', handlePostSubmit);

    // --- Event Listener for the Match Button ---
    if (matchButton) {
        matchButton.addEventListener('click', handleMatchClick);
    } else {
        console.error("Match button not found!"); // Debugging
    }
    // ----------------------------------------------------

    chatBtn.addEventListener('click', () => chatInterface.style.display = 'flex');
    closeChatBtn.addEventListener('click', () => chatInterface.style.display = 'none');

    function sendUserMessageChat() {
        const text = messageInputChat.value.trim();
        if (!text) return;
        const userMsgDiv = document.createElement('div');
        userMsgDiv.className = 'message user-message';
        userMsgDiv.innerHTML = `<div class="message-content"><p>${text.replace(/</g, "&lt;").replace(/>/g, "&gt;")}</p></div><div class="message-avatar">👤</div>`;
        chatMessages.appendChild(userMsgDiv);
        messageInputChat.value = '';
        setTimeout(() => {
            const botMsgDiv = document.createElement('div');
            botMsgDiv.className = 'message bot-message';
            botMsgDiv.innerHTML = `<div class="message-avatar">🤖</div><div class="message-content"><p>Thanks for your message! A real agent will respond shortly.</p></div>`;
            chatMessages.appendChild(botMsgDiv);
            chatMessages.scrollTop = chatMessages.scrollHeight;
        }, 1000);
        chatMessages.scrollTop = chatMessages.scrollHeight;
    }
    sendMessageChat.addEventListener('click', sendUserMessageChat);
    messageInputChat.addEventListener('keypress', (e) => { if (e.key === 'Enter') sendUserMessageChat(); });

    // --- Initial Page Load ---
    fetchPosts(); // Fetch posts from backend when page loads

}); // End DOMContentLoaded