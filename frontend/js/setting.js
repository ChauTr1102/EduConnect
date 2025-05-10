
// Toggle between settings panels
document.querySelectorAll('.sidebar-menu-item').forEach((item, index) => {
    item.addEventListener('click', function() {
        // Remove active class from all items
        document.querySelectorAll('.sidebar-menu-item').forEach(i => {
            i.classList.remove('active');
        });

        // Add active class to clicked item
        this.classList.add('active');

        // Hide all panels
        document.querySelectorAll('.settings-panel').forEach(panel => {
            panel.style.display = 'none';
        });

        // Show the corresponding panel
        const panels = [
            'profile-info',
            'password-security',
            'notifications',
            // Add IDs for other panels
        ];

        if (panels[index]) {
            document.getElementById(panels[index]).style.display = 'block';
        }
    });
});