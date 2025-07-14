
// Script to handle FAQ accordion functionality
document.addEventListener('DOMContentLoaded', function() {
    const faqQuestions = document.querySelectorAll('.faq-question');

    const userBalance = sessionStorage.getItem('user_balance');
    document.querySelector('.credit-icon').textContent = `${userBalance} VND`;

    document.querySelector('.credit-icon').addEventListener('click', function() {
    window.location.href = '/deposit';});

    faqQuestions.forEach(question => {
        question.addEventListener('click', function() {
            const answer = this.nextElementSibling;
            const isOpen = answer.classList.contains('show');

            // Close all answers
            document.querySelectorAll('.faq-answer').forEach(ans => {
                ans.classList.remove('show');
            });

            // Reset all indicators
            document.querySelectorAll('.faq-question span').forEach(span => {
                span.textContent = '+';
            });

            // Open current answer if it was closed
            if (!isOpen) {
                answer.classList.add('show');
                this.querySelector('span').textContent = '−';
            }
        });
    });
});