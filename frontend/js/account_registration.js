document.addEventListener('DOMContentLoaded', function() {
    // Đánh dấu các trường bắt buộc
    document.querySelectorAll('#registration-form [required]').forEach(input => {
        const label = input.closest('.form-group').querySelector('.form-label');
        if (label) {
            label.classList.add('required');
        }
    });
    const registrationForm = document.getElementById('registration-form');
    const passwordInput = document.getElementById('password');
    const confirmPasswordInput = document.getElementById('confirm-password');
    const usernameInput = document.getElementById('username');
    const emailInput = document.getElementById('email');

    // Kiểm tra mật khẩu trùng khớp
    confirmPasswordInput.addEventListener('input', function() {
        if (passwordInput.value !== confirmPasswordInput.value) {
            showError('confirm-password-error', 'Mật khẩu không khớp');
        } else {
            hideError('confirm-password-error');
        }
    });

    // Kiểm tra độ dài mật khẩu
    passwordInput.addEventListener('input', function() {
        if (passwordInput.value.length < 6) {
            showError('password-error', 'Mật khẩu phải có ít nhất 6 ký tự');
        } else {
            hideError('password-error');
        }
    });

    // Kiểm tra username hợp lệ
    usernameInput.addEventListener('blur', function() {
        if (usernameInput.value.trim().length < 3) {
            showError('username-error', 'Tên đăng nhập phải có ít nhất 3 ký tự');
        } else {
            // Kiểm tra username tồn tại trên server
            checkUsernameAvailability(usernameInput.value.trim());
        }
    });

    // Kiểm tra email hợp lệ
    emailInput.addEventListener('blur', function() {
        if (!validateEmail(emailInput.value.trim())) {
            showError('email-error', 'Email không hợp lệ');
        } else {
            // Kiểm tra email tồn tại trên server
            checkEmailAvailability(emailInput.value.trim());
        }
    });

    // Xử lý submit form
    registrationForm.addEventListener('submit', function(e) {
        e.preventDefault();

        // Validate lại tất cả trường
        let isValid = true;

        // Kiểm tra username
        if (usernameInput.value.trim().length < 3) {
            showError('username-error', 'Tên đăng nhập phải có ít nhất 3 ký tự');
            isValid = false;
        }

        // Kiểm tra password
        if (passwordInput.value.length < 6) {
            showError('password-error', 'Mật khẩu phải có ít nhất 6 ký tự');
            isValid = false;
        }

        // Kiểm tra confirm password
        if (passwordInput.value !== confirmPasswordInput.value) {
            showError('confirm-password-error', 'Mật khẩu không khớp');
            isValid = false;
        }

        // Kiểm tra email
        if (!validateEmail(emailInput.value.trim())) {
            showError('email-error', 'Email không hợp lệ');
            isValid = false;
        }

        // Nếu tất cả hợp lệ, gửi dữ liệu đăng ký
        if (isValid) {
            registerStudent();
        }
    });

    // Hàm hiển thị thông báo lỗi
    function showError(elementId, message) {
        const errorElement = document.getElementById(elementId);
        errorElement.textContent = message;
        errorElement.style.display = 'block';
    }

    // Hàm ẩn thông báo lỗi
    function hideError(elementId) {
        const errorElement = document.getElementById(elementId);
        errorElement.style.display = 'none';
    }

    // Hàm kiểm tra định dạng email
    function validateEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    // Hàm kiểm tra username đã tồn tại chưa
    function checkUsernameAvailability(username) {
        fetch(`/api/check_username?username=${encodeURIComponent(username)}`)
            .then(response => response.json())
            .then(data => {
                if (data.exists) {
                    showError('username-error', 'Tên đăng nhập đã được sử dụng');
                } else {
                    hideError('username-error');
                }
            })
            .catch(error => {
                console.error('Error checking username:', error);
            });
    }

    // Hàm kiểm tra email đã tồn tại chưa
    function checkEmailAvailability(email) {
        fetch(`/api/check_email?email=${encodeURIComponent(email)}`)
            .then(response => response.json())
            .then(data => {
                if (data.exists) {
                    showError('email-error', 'Email đã được sử dụng');
                } else {
                    hideError('email-error');
                }
            })
            .catch(error => {
                console.error('Error checking email:', error);
            });
    }

    // Hàm đăng ký học sinh
    function registerStudent() {
        const formData = {
            username: document.getElementById('username').value.trim(),
            password: document.getElementById('password').value,
            name: document.getElementById('fullname').value.trim(),
            birth_date: document.getElementById('birthdate').value,
            gender: document.querySelector('input[name="gender"]:checked').value,
            email: document.getElementById('email').value.trim(),
            address: document.getElementById('address').value.trim(),
            introduction: document.getElementById('introduction').value.trim(),
            hobby: document.getElementById('hobby').value.trim()
        };

        fetch('/api/register_student', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(formData)
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Đăng ký không thành công');
            }
            return response.json();
        })
        .then(data => {
            alert('Đăng ký thành công! Vui lòng đăng nhập.');
            window.location.href = 'login.html';
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Đăng ký không thành công: ' + error.message);
        });
    }
});