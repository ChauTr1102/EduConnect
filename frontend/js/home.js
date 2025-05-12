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

    // --- Default Data ---
    const placeholderAvatar = 'avatar-placeholder.png';
    const defaultPosts = [
         { id: 1, user: "Nguyen Thu Trang", avatar: "avatar1.png", time: "2 hours ago", content: "Cần tìm gia sư Toán lớp 10 khu vực Hà Nội. Mình cần tìm gia sư dạy Toán lớp 10, chủ yếu ôn Đại số, Hình học. Lương sẽ thỏa thuận tùy vào khả năng, ít theo kíp mỗi bài khó. Cần 1 anh/chị dạy dễ hiểu, hướng dẫn tận tình, giúp làm bài tập với ôn chuẩn bị cuối kì." },
         { id: 2, user: "Mai Anh", avatar: "avatar2.png", time: "1 hour ago", content: "Hello mọi người, mình là Mai Anh, học lớp 11 mà Toán hơi lẹt đẹt nên muốn tìm một anh/chị gia sư cuối dạy mình phần Hàm số, Đạo hàm, Hình học không gian. Trên lớp nghe giảng mà đầu cứ quay quay, làm bài tập toán tuần này 😓." },
         { id: 3, user: "Nguyen Trong Minh", avatar: "avatar3.png", time: "2 hours ago", content: "Hello mọi người, mình là Minh, học lớp 12 mà Toán đang hơi đuối, nhất là Hàm số, Tích phân, Hình không gian. Đi học trên lớp thì ngồi nghe mà đầu óc cứ như trên mây, về nhà làm đề toán sai 😓." },
         { id: 4, user: "Đặng Quang", avatar: "avatar4.png", time: "1 hour ago", content: "Tìm gia sư Toán cứu với cuộc đời em 😓 Chào mọi người, em là Quang, học lớp 11 mà Toán cứ như một vòng luẩn quẩn → hoang mang → làm sai 😓." },
         { id: 5, user: "Le Binh", avatar: "images/Lê Nguyễn Thanh Bình.jpg", time: "3 hours ago", content: "Cần tìm gia sư Toán lớp 10 gấp ạ 😭 Em là Lê Nguyễn Thanh Bình, mới lên lớp 10 mà Hình học với Đại số em mất gốc từ cấp 2 rồi, giờ nghe giảng không hiểu gì cả, bài tập thì nhìn như bức vách. Cần anh chị nào kiên nhẫn dạy lại giúp em với, em cảm ơn nhiều ạ." },
         { id: 6, user: "Ngoc Hieu", avatar: "images/Ngoc Hieu.png", time: "4 hours ago", content: "Tìm gia sư Toán 12 ôn thi ĐH gấp!!! 😥 Mình là Hiếu, sắp thi rồi mà Toán còn yếu quá, nhất là mấy dạng vận dụng cao giải mãi không ra, thấy đề là hoang mang. Có anh chị nào kinh nghiệm ôn thi, hệ thống kiến thức tốt giúp mình với. Lo quá!" },
         { id: 7, user: "Trinh Chau", avatar: "images/Trinh Chau.png", time: "5 hours ago", content: "Ai cứu em môn Hình không gian với ạ 🙏 Em là Châu lớp 11. Cứ học đến hình không gian là đầu óc em quay cuồng, trừu tượng quá không tưởng tượng nổi hình luôn, vẽ sai hoài 😵. Cần một gia sư dạy dễ hiểu phần này gấp ạ, SOS!" },
         { id: 8, user: "Duc Manh", avatar: "images/Duc Manh.png", time: "6 hours ago", content: "Có ai nhận dạy kèm Toán cho học sinh yếu không ạ? 🥺 Em là Mạnh, lớp 10. Em sợ môn Toán lắm, làm bài toàn sai, điểm lúc nào cũng thấp lè tè. Muốn tìm gia sư tận tình, kiên nhẫn, nói dễ hiểu giúp em lấy lại căn bản với ạ, chứ tình hình này chắc em tiêu." },
    ];
    const suggestedTutors = [
        { name: "Gia sư Nguyễn Văn A", description: "Sinh viên năm 3 ĐH Bách Khoa, chuyên Toán Lý Hóa, kinh nghiệm 2 năm.", avatar: "images/Lê Nguyễn Thanh Bình.jpg" },
        { name: "Gia sư Trần Thị B", description: "Giáo viên về hưu, >10 năm kinh nghiệm dạy Toán cấp 2, 3.", avatar: "images/ảnh tutor 2.jpg" },
        { name: "Gia sư Lê Văn C", description: "Thủ khoa đầu vào Sư Phạm Toán, nhiệt tình, phương pháp dễ hiểu.", avatar: "images/ảnh tutor 3.jpg" },
        { name: "Gia sư Phạm Thị D", description: "Du học sinh Mỹ, điểm SAT Toán 800/800.", avatar: "images/ảnh tutor 4.jpg" },
    ];

    // --- Functions ---

    function renderPostCard(postData) {
        const card = document.createElement('div');
        card.className = 'message-card';
        card.dataset.postId = postData.id || Date.now(); // Use provided ID or generate one

        const userName = postData.user || "User";
        const userAvatar = postData.avatar || placeholderAvatar;
        const postTime = postData.time || "Recently";
        const postText = (postData.content || "No content")
                            .replace(/</g, "<") // More robust sanitization
                            .replace(/>/g, ">")
                            .replace(/\n/g, '<br>');


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
                <a href="chat.html?user=${encodeURIComponent(userName)}&avatar=${encodeURIComponent(userAvatar)}" class="message-btn" style="text-decoration: none;">Send message</a>
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

        const prevButton = document.createElement('button');
        prevButton.className = 'page-item';
        prevButton.textContent = '«';
        prevButton.disabled = currentPage === 1;
        prevButton.onclick = () => { if (currentPage > 1) { displayPage(currentPage - 1); scrollToTop(); } };
        paginationControls.appendChild(prevButton);

        for (let i = 1; i <= totalPages; i++) {
            const pageButton = document.createElement('button');
            pageButton.className = `page-item ${i === currentPage ? 'active' : ''}`;
            pageButton.textContent = i;
            pageButton.onclick = () => { displayPage(i); scrollToTop(); };
            paginationControls.appendChild(pageButton);
        }

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

    function initializePosts() {
        allPostsData = [...defaultPosts].reverse();
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


        setTimeout(() => {
            const newPostData = {
                user: "Lê Nguyễn Thanh Bình",
                avatar: "images/Lê Nguyễn Thanh Bình.jpg",
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

    // --- NEW: Function to handle Match button click ---
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
                                      .replace(/</g, "<")
                                      .replace(/>/g, ">")
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
            initializePosts(); displayPage(1); return;
        }
        const filteredPosts = defaultPosts.filter(post =>
            post.user.toLowerCase().includes(searchTerm) ||
            post.content.toLowerCase().includes(searchTerm)
        );
        allPostsData = [...filteredPosts].reverse();
        displayPage(1);
        if (allPostsData.length === 0) {
             messageListContainer.innerHTML = '<p style="text-align: center; color: var(--light-text); padding: 2rem;">No posts found matching your search.</p>';
             paginationControls.innerHTML = '';
         }
    });
    searchBar.addEventListener('keypress', (e) => { if (e.key === 'Enter') searchBtn.click(); });
    searchBar.addEventListener('input', () => { if (searchBar.value.trim() === '') { initializePosts(); displayPage(1); } });

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

    // --- ADDED: Event Listener for the Match Button ---
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
        userMsgDiv.innerHTML = `<div class="message-content"><p>${text.replace(/</g, "<").replace(/>/g, ">")}</p></div><div class="message-avatar">👤</div>`;
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
    initializePosts();
    displayPage(1);

}); // End DOMContentLoaded