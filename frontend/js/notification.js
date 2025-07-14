document.addEventListener('DOMContentLoaded', function() {
    const userBalance = sessionStorage.getItem('user_balance');
    document.querySelector('.credit-icon').textContent = `${userBalance} VND`;

    document.querySelector('.credit-icon').addEventListener('click', function() {
    window.location.href = '/deposit';});

    // Handle filter buttons
    const filterButtons = document.querySelectorAll('.filter-button');

    filterButtons.forEach(button => {
        button.addEventListener('click', function() {
            // Remove active class from all buttons
            filterButtons.forEach(btn => btn.classList.remove('active'));

            // Add active class to clicked button
            this.classList.add('active');

            // Here you would normally filter the notifications based on the selected category
            // For this demo, we're just showing the UI interaction
        });
    });

    // Handle "Mark all as read"
    const markAllReadButton = document.querySelector('.mark-all-read');

    markAllReadButton.addEventListener('click', function() {
        const unreadItems = document.querySelectorAll('.notification-item.unread');
        unreadItems.forEach(item => {
            item.classList.remove('unread');
        });

        // Remove notification badge
        const badge = document.querySelector('.notification-badge');
        if (badge) {
            badge.style.display = 'none';
        }
    });

    // Handle individual "Mark as Read" actions
    const markAsReadButtons = document.querySelectorAll('.notification-action:nth-child(2)');

    markAsReadButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.stopPropagation();
            const notificationItem = this.closest('.notification-item');
            notificationItem.classList.remove('unread');

            // Update badge count
            updateBadgeCount();
        });
    });

    // Handle dropdown "Mark as Read" actions
    const dropdownMarkAsReadButtons = document.querySelectorAll('.notification-dropdown-item:first-child');

    dropdownMarkAsReadButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.stopPropagation();
            const notificationItem = this.closest('.notification-item');
            if (notificationItem.classList.contains('unread')) {
                notificationItem.classList.remove('unread');

                // Update badge count
                updateBadgeCount();
            }
        });
    });

    // Handle dropdown "Delete" actions
    const deleteButtons = document.querySelectorAll('.notification-dropdown-item:nth-child(2)');

    deleteButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.stopPropagation();
            const notificationItem = this.closest('.notification-item');
            notificationItem.style.opacity = '0';
            setTimeout(() => {
                notificationItem.remove();

                // Check if there are any notifications left
                const notificationList = document.querySelector('.notification-list');
                if (notificationList.children.length === 0) {
                    showEmptyState();
                }

                // Update badge count
                updateBadgeCount();
            }, 300);
        });
    });

    // Function to update badge count
    function updateBadgeCount() {
        const unreadCount = document.querySelectorAll('.notification-item.unread').length;
        const badge = document.querySelector('.notification-badge');

        if (unreadCount === 0) {
            badge.style.display = 'none';
        } else {
            badge.style.display = 'flex';
            badge.textContent = unreadCount;
        }
    }

    // Function to show empty state
    function showEmptyState() {
        const notificationList = document.querySelector('.notification-list');
        notificationList.innerHTML = `
            <div class="empty-notifications">
                <div class="empty-icon">📭</div>
                <h3>No notifications</h3>
                <p>You're all caught up! Check back later for updates.</p>
            </div>
        `;
    }
});