// Script for dropdown functionality
document.addEventListener('DOMContentLoaded', function() {
    const accountContainer = document.querySelector('.account-container');
    const accountDropdown = document.querySelector('.account-dropdown');

    accountContainer.addEventListener('click', function() {
        accountDropdown.style.display = accountDropdown.style.display === 'block' ? 'none' : 'block';
    });

    // Close the dropdown when clicking outside
    document.addEventListener('click', function(event) {
        if (!accountContainer.contains(event.target)) {
            accountDropdown.style.display = 'none';
        }
    });
});