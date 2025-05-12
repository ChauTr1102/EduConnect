document.addEventListener('DOMContentLoaded', () => {
    // Timing Constants (in milliseconds)
    const tutorAppearDelay = 2000;
    const cardStaggerDelay = 150;
    const cardTransitionDuration = 600;
    const areaFadeInDelay = 300;
    const statusAppearDelayOffset = 100;
    const statusHideDelay = 2000;

    // API Endpoint
    const SAVE_TEACHER_ENDPOINT = '/api/save_chosen_teacher/'; // Your FastAPI endpoint

    // Get elements
    const loadingSpinner = document.getElementById('loadingSpinner');
    const tutorArea = document.getElementById('tutorArea');
    const finalStatusBox = document.getElementById('finalStatusBox');

    // --- Function to create a Tutor Card HTML ---
    function createTutorCardHTML(teacher) {
        const placeholderImage = `images/${teacher.name}.png`; // Default image if teacher.image is missing
        const teacherName = teacher.name || 'Unnamed Teacher';
        const teacherId = teacher.teacher_id || 'unknown_id';
        const teacherEmail = teacher.email || 'N/A'; // Get email or use placeholder
        const teacherReason = teacher.reason || 'No reason provided.'; // Get reason or use placeholder

        // MODIFIED: Added data attributes AND the hidden details div
        return `
            <div class="tutor-card"
                data-teacher-id="${teacherId}"
                data-teacher-email="${teacherEmail}"
                data-teacher-reason="${teacherReason}">
                <div class="tutor-label">Teacher</div>
                <div class="tutor-image">
                    <img src="${teacher.image || placeholderImage}" alt="${teacherName}">
                </div>
                <div class="tutor-info">
                    <h3 class="tutor-name">${teacherName}</h3>
                    <div class="tutor-buttons">
                        <a href="#" class="tutor-seemore-btn">See more</a>
                        <a href="chat.html" class="tutor-message-btn">Send message</a>
                    </div>
                    <!-- ADDED: Hidden details area -->
                    <div class="tutor-details">
                        <p><strong>Email:</strong> ${teacherEmail}</p>
                        <p><strong>Reason:</strong> ${teacherReason}</p>
                    </div>
                </div>
            </div>
        `;
    }

    // --- Function to send teacher data to the API ---
    async function sendTeacherDataToAPI(teacherData) {
        try {
            const response = await fetch(SAVE_TEACHER_ENDPOINT, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json' // Often helpful
                },
                body: JSON.stringify(teacherData)
            });

            if (!response.ok) {
                let errorBody = 'No details available';
                try { errorBody = await response.text(); } catch (parseError) { /* Ignore */ }
                throw new Error(`API Error: ${response.status} ${response.statusText}. Body: ${errorBody}`);
            }

            const result = await response.json();
            console.log('API Success:', result);
            return true; // Indicate success

        } catch (error) {
            console.error('Error sending teacher data to API:', error);
            showTemporaryStatus('Error contacting server. Please try again.', true);
            return false; // Indicate failure
        }
    }

    // --- Function to show a temporary status message ---
    function showTemporaryStatus(message, isError = false) {
        if (!finalStatusBox) return;
        finalStatusBox.textContent = message;
        finalStatusBox.classList.remove('error', 'success', 'visible', 'hidden'); // Reset classes
        finalStatusBox.classList.toggle('error', isError); // Simpler way to add/remove error class
        finalStatusBox.classList.add('visible');

        setTimeout(() => {
            finalStatusBox.classList.remove('visible');
            finalStatusBox.classList.add('hidden');
        }, statusHideDelay);
    }


    // --- Function to start the animation sequence ---
    function startAnimationSequence(matchesFound, numberOfCards = 0) {
        let calculatedStatusAppearDelay = tutorAppearDelay + areaFadeInDelay;
        if (matchesFound) {
            calculatedStatusAppearDelay += (numberOfCards * cardStaggerDelay) + cardTransitionDuration + statusAppearDelayOffset;
        } else {
            calculatedStatusAppearDelay += statusAppearDelayOffset;
        }

        // 1. Hide spinner & Show Tutor Area
        setTimeout(() => {
            if (loadingSpinner) loadingSpinner.classList.add('hidden');
            if (matchesFound && tutorArea) {
                tutorArea.classList.add('visible');
                const cards = tutorArea.querySelectorAll('.tutor-card');
                let teacherCardIndex = 0; // Separate index for teacher cards animation stagger
                cards.forEach((card) => {
                     // Make student card visible immediately with the area fade-in
                    if (card.id === 'tutor1') {
                         card.classList.add('visible');
                         return; // Skip stagger delay for student card
                    }
                    // Apply stagger delay only to teacher cards
                    setTimeout(() => {
                        card.classList.add('visible');
                    }, teacherCardIndex * cardStaggerDelay);
                    teacherCardIndex++; // Increment only for teacher cards
                });
            }
        }, tutorAppearDelay);


        // 2. Show final status box (related to finding matches)
        setTimeout(() => {
            if (finalStatusBox) {
                finalStatusBox.classList.add('visible');
                setTimeout(() => {
                    finalStatusBox.classList.remove('visible');
                    finalStatusBox.classList.add('hidden');
                }, statusHideDelay);
            }
        }, calculatedStatusAppearDelay);

        // Optional cleanup listeners (can be removed if not strictly needed)
        // if (finalStatusBox) { ... }
        // if (loadingSpinner) { ... }
    }

    // --- Function to handle the fetched teacher data ---
    function handleTeacherData(teachers) {
        if (teachers && teachers.length > 0) {
            const teachersToShow = teachers.slice(0, 2); // Get the first two

            finalStatusBox.textContent = `Đã tìm thấy ${teachersToShow.length} gia sư phù hợp!`;
            finalStatusBox.classList.remove('error');

            // Clear previous teacher cards (if any, keeping the student card)
             const existingTeacherCards = tutorArea.querySelectorAll('.tutor-card:not(#tutor1)');
             existingTeacherCards.forEach(card => card.remove());

            // Create and append new cards
            teachersToShow.forEach(teacher => {
                const cardHTML = createTutorCardHTML(teacher);
                tutorArea.insertAdjacentHTML('beforeend', cardHTML);
            });

            startAnimationSequence(true, teachersToShow.length);

        } else {
            handleNoMatch("Không tìm thấy gia sư phù hợp.");
        }
    }

    // --- Function to handle the "no match" case ---
    function handleNoMatch(message) {
        if (finalStatusBox) {
            finalStatusBox.textContent = message;
            finalStatusBox.classList.add('error');
        }
        startAnimationSequence(false);
    }

    // --- MODIFIED: Event Listener for ALL button clicks within tutorArea ---
    if (tutorArea) {
        tutorArea.addEventListener('click', async (event) => {
             // Find the closest button element that was clicked or contains the clicked element
            const button = event.target.closest('a.tutor-seemore-btn, a.tutor-message-btn');

            // If no button was clicked, do nothing
            if (!button) return;

            // Prevent default anchor link behavior for both button types
            event.preventDefault();

            const card = button.closest('.tutor-card');
            if (!card) return; // Should not happen if button is inside a card

            // --- Handle "See More" button ---
            if (button.classList.contains('tutor-seemore-btn')) {
                 // Toggle the visibility class on the parent card
                 card.classList.toggle('details-visible');
            }
            // --- Handle "Send Message" button ---
            else if (button.classList.contains('tutor-message-btn')) {
                const teacherId = card.dataset.teacherId;
                const teacherEmail = card.dataset.teacherEmail;
                const teacherReason = card.dataset.teacherReason;
                const teacherNameElement = card.querySelector('.tutor-name');
                const teacherName = teacherNameElement ? teacherNameElement.textContent : 'Unknown Name';

                // Prepare data for API
                const dataToSend = {
                    teacher_id: teacherId,
                    name: teacherName,
                    email: teacherEmail,
                    reason: teacherReason
                };

                sessionStorage.setItem('chosenTeacherData', JSON.stringify(dataToSend))
                window.location.href = 'chat.html';

//                console.log('Sending data to API:', dataToSend);
//
//                // Disable button temporarily
//                button.style.pointerEvents = 'none';
//                button.style.opacity = '0.7';
//
//                // Call the API
//                const success = await sendTeacherDataToAPI(dataToSend);
//
//                // Re-enable button
//                button.style.pointerEvents = 'auto';
//                button.style.opacity = '1';
//
//                // Navigate if successful
//                if (success) {
//                     console.log("API call successful, navigating to chat...");
//                     window.location.href = button.href; // Navigate to chat.html
//                } else {
//                    console.log("API call failed, staying on page.");
//                    // Error message shown by showTemporaryStatus
//                }
            }
        });
    } else {
        console.error("Could not find tutorArea element to attach listener.");
    }

    // --- Main Execution Logic ---
    const postId = sessionStorage.getItem('selectedPostId');
    const postIdPayload = {post_id: postId};
    fetch('/api/get_suitable_teacher/', {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify(postIdPayload)
    })
    .then(async response => {
        if (!response.ok) {
            const errorText = await response.text();
            console.error(`❌ Server trả về lỗi ${response.status}:`, errorText);
            handleNoMatch('Không thể lấy dữ liệu từ server.');
            return;
        }

        const data = await response.json();

        if (Array.isArray(data)) {
            handleTeacherData(data);
        } else if (data && Array.isArray(data.teachers)) {
            handleTeacherData(data.teachers);
        } else {
            console.error('❌ Dữ liệu không đúng định dạng:', data);
            handleNoMatch('Lỗi định dạng dữ liệu gia sư.');
        }
    })
    .catch(error => {
            console.error('Error fetching or parsing suitable_teacher.json:', error);
            handleNoMatch('Lỗi khi tải dữ liệu gia sư.');
    });
});
