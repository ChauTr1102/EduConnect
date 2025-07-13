document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('registrationForm');
    const formStatus = document.getElementById('formStatus');

    // Lấy các element input
    const nameInput = document.getElementById('name');
    const usernameInput = document.getElementById('username');
    const emailInput = document.getElementById('email');
    const passwordInput = document.getElementById('password');
    const confirmPasswordInput = document.getElementById('confirmPassword');

    // --- Debounce function để tránh gọi API liên tục ---
    const debounce = (func, delay) => {
        let timeoutId;
        return (...args) => {
            clearTimeout(timeoutId);
            timeoutId = setTimeout(() => {
                func.apply(this, args);
            }, delay);
        };
    };

    // --- Hàm hiển thị lỗi ---
    const showError = (input, message) => {
        const formGroup = input.parentElement;
        const errorElement = formGroup.querySelector('.error-message');
        errorElement.textContent = message;
        input.classList.remove('valid');
        input.classList.add('invalid');
    };

    // --- Hàm hiển thị thành công ---
    const showSuccess = (input) => {
        const formGroup = input.parentElement;
        const errorElement = formGroup.querySelector('.error-message');
        errorElement.textContent = '';
        input.classList.remove('invalid');
        input.classList.add('valid');
    };

    // --- Hàm kiểm tra Tên đăng nhập (API) ---
    const checkUsername = async () => {
        const username = usernameInput.value.trim();
        if (username.length < 3) {
            showError(usernameInput, 'Tên đăng nhập phải có ít nhất 3 ký tự.');
            return false;
        }
        try {
            const response = await fetch(`/api/check_username?username=${encodeURIComponent(username)}`);
            const data = await response.json();
            if (data.exists) {
                showError(usernameInput, 'Tên đăng nhập này đã tồn tại.');
                return false;
            } else {
                showSuccess(usernameInput);
                return true;
            }
        } catch (error) {
            showError(usernameInput, 'Lỗi khi kiểm tra tên đăng nhập.');
            return false;
        }
    };

    // --- Hàm kiểm tra Email (API) ---
    const checkEmail = async () => {
        const email = emailInput.value.trim();
        if (!/^\S+@\S+\.\S+$/.test(email)) {
            showError(emailInput, 'Định dạng email không hợp lệ.');
            return false;
        }
        try {
            const response = await fetch(`/api/check_email?email=${encodeURIComponent(email)}`);
            const data = await response.json();
            if (data.exists) {
                showError(emailInput, 'Email này đã được sử dụng.');
                return false;
            } else {
                showSuccess(emailInput);
                return true;
            }
        } catch (error) {
            showError(emailInput, 'Lỗi khi kiểm tra email.');
            return false;
        }
    };

    // --- Hàm kiểm tra Mật khẩu ---
    const validatePassword = () => {
        const password = passwordInput.value;
        if (password.length < 6) {
            showError(passwordInput, 'Mật khẩu phải có ít nhất 6 ký tự.');
            return false;
        } else {
            showSuccess(passwordInput);
            return true;
        }
    };

    // --- Hàm kiểm tra mật khẩu trùng khớp ---
    const validatePasswordConfirmation = () => {
        // Chạy lại validatePassword để đảm bảo message lỗi được cập nhật đúng
        validatePassword();
        if (passwordInput.value !== confirmPasswordInput.value) {
            showError(confirmPasswordInput, 'Mật khẩu xác nhận không khớp.');
            return false;
        } else if (confirmPasswordInput.value) {
            showSuccess(confirmPasswordInput);
            return true;
        }
        return false;
    };

    // --- Gắn sự kiện vào các trường input ---
    usernameInput.addEventListener('input', debounce(checkUsername, 500));
    emailInput.addEventListener('input', debounce(checkEmail, 500));
    passwordInput.addEventListener('input', validatePasswordConfirmation);
    confirmPasswordInput.addEventListener('input', validatePasswordConfirmation);

    // --- Xử lý khi submit form ---
    form.addEventListener('submit', async function (event) {
        event.preventDefault();

        // Kiểm tra tất cả các trường bắt buộc
        let isFormValid = true;
        form.querySelectorAll('input[required], select[required]').forEach(input => {
            if (!input.value.trim()) {
                showError(input, 'Trường này là bắt buộc.');
                isFormValid = false;
            }
        });

        // Chạy lại các hàm validation chính
        const isPasswordValid = validatePassword();
        const isPasswordConfirmed = validatePasswordConfirmation();
        const isUsernameOk = await checkUsername();
        const isEmailOk = await checkEmail();

        if (!isFormValid || !isPasswordValid || !isPasswordConfirmed || !isUsernameOk || !isEmailOk) {
            showFormStatus('Vui lòng kiểm tra lại các thông tin đã nhập.', 'error');
            return;
        }

        const formData = new FormData(form);
        const studentData = Object.fromEntries(formData.entries());

        // Xóa trường xác nhận mật khẩu không cần thiết
        delete studentData.confirmPassword;

        // Gửi dữ liệu lên server
        try {
            const response = await fetch('/api/register_student', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(studentData),
            });

            const result = await response.json();

            if (response.ok) {
                showFormStatus('Đăng ký thành công! Bạn sẽ được chuyển hướng trong giây lát.', 'success');
                form.reset();
                form.querySelectorAll('.valid, .invalid').forEach(el => el.classList.remove('valid', 'invalid'));
                // Optional: Redirect after success
                // setTimeout(() => { window.location.href = '/login'; }, 3000);
            } else {
                showFormStatus(`Đăng ký thất bại: ${result.detail}`, 'error');
            }
        } catch (error) {
            showFormStatus('Đã có lỗi mạng xảy ra. Vui lòng thử lại sau.', 'error');
        }
    });

    function showFormStatus(message, type) {
        formStatus.textContent = message;
        formStatus.className = `form-status ${type}`;
    }
});