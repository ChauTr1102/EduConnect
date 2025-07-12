// Simple script to handle tab switching
document.addEventListener('DOMContentLoaded', function() {
    const userBalance = sessionStorage.getItem('user_balance');
    document.querySelector('.credit-icon').textContent = `${userBalance} VND`;

    document.querySelector('.credit-icon').addEventListener('click', function() {
    window.location.href = '/deposit';});

    const tabs = document.querySelectorAll('.tab');
    tabs.forEach(tab => {
        tab.addEventListener('click', function() {
            tabs.forEach(t => t.classList.remove('active'));
            this.classList.add('active');
        });
    });
});