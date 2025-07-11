const API_BASE_URL = 'http://localhost:8000'; // Địa chỉ API server

async function registerStudent() {
    const form = document.getElementById('registrationForm');
    const requiredFields = ['username', 'password', 'name', 'birthDate', 'gender', 'email'];

    // Kiểm tra các trường bắt buộc
    for (const field of requiredFields) {
        const value = document.getElementById(field).value.trim();
        if (!value) {
            alert(`Vui lòng điền vào trường ${getFieldNameVi(field)}`);
            return;
        }
    }

    // Kiểm tra độ dài mật khẩu
    if (document.getElementById('password').value.length < 6) {
        alert('Mật khẩu phải có ít nhất 6 ký tự');
        return;
    }

    const studentData = {
        username: document.getElementById('username').value.trim(),
        password: document.getElementById('password').value,
        name: document.getElementById('name').value.trim(),
        birth_date: document.getElementById('birthDate').value,
        gender: document.getElementById('gender').value,
        email: document.getElementById('email').value.trim(),
        address: document.getElementById('address').value.trim() || null,
        introduction: document.getElementById('introduction').value.trim() || null,
        hobby: document.getElementById('hobby').value.trim() || null
    };

    try {
        // Hiển thị trạng thái đang xử lý
        const resultElement = document.getElementById('registrationResult');
        resultElement.textContent = 'Đang xử lý đăng ký...';
        resultElement.className = 'info';

        const response = await fetch(`${API_BASE_URL}/api/register_student`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(studentData)
        });

        if (response.ok) {
            const data = await response.json();
            resultElement.textContent = `Đăng ký thành công! Mã người dùng: ${data.user_id}`;
            resultElement.className = 'success';

            // Tự động chuyển hướng sau 2 giây
            setTimeout(() => {
                window.location.href = 'http://localhost:8080/home'; // Chuyển đến trang đăng nhập
            }, 2000);

            form.reset();
        } else {
            const errorData = await response.json();
            const errorMessage = translateError(errorData.detail);
            resultElement.textContent = `Đăng ký thất bại: ${errorMessage}`;
            resultElement.className = 'error';
        }
    } catch (error) {
        console.error('Lỗi trong quá trình đăng ký:', error);
        const resultElement = document.getElementById('registrationResult');
        resultElement.textContent = 'Lỗi kết nối máy chủ. Vui lòng thử lại sau.';
        resultElement.className = 'error';
    }
}

// Hàm chuyển đổi tên trường sang tiếng Việt
function getFieldNameVi(field) {
    const fieldNames = {
        'username': 'tên đăng nhập',
        'password': 'mật khẩu',
        'name': 'họ và tên',
        'birthDate': 'ngày sinh',
        'gender': 'giới tính',
        'email': 'email'
    };
    return fieldNames[field] || field;
}

// Hàm dịch các thông báo lỗi từ API
function translateError(errorMessage) {
    const errorTranslations = {
        'Username already exists': 'Tên đăng nhập đã tồn tại',
        'Email already exists': 'Email đã được sử dụng',
        'Invalid email format': 'Định dạng email không hợp lệ',
        'Password must be at least 6 characters': 'Mật khẩu phải có ít nhất 6 ký tự',
        'Gender must be Male or Female': 'Giới tính phải là Nam hoặc Nữ'
    };
    return errorTranslations[errorMessage] || errorMessage;
}

// Thêm sự kiện click cho nút đăng ký
document.addEventListener('DOMContentLoaded', () => {
    const registerButton = document.querySelector('#registrationForm button');
    if (registerButton) {
        registerButton.addEventListener('click', registerStudent);
    }
});