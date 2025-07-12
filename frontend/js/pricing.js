// Script for dropdown functionality
document.addEventListener('DOMContentLoaded', function() {
    const userBalance = sessionStorage.getItem('user_balance');
    document.querySelector('.credit-icon').textContent = `${userBalance} VND`;

    document.querySelector('.credit-icon').addEventListener('click', function() {
    window.location.href = '/deposit';});

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