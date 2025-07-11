///auth/userinfo.email
///auth/userinfo.profile
const CLIENT_ID = "353112133927-rfs7v2f19lqrt5d5ina11dqpchaqtqhr.apps.googleusercontent.com";

const LINK_GET_TOKEN = `https://accounts.google.com/o/oauth2/v2/auth?` +
  `scope=https://www.googleapis.com/auth/userinfo.email%20https://www.googleapis.com/auth/userinfo.profile` +
  `&response_type=token` +
  `&redirect_uri=http://http://localhost:8080/` + // URI tĩnh
  `&client_id=${CLIENT_ID}` +
  `&state=state_parameter_passthrough_value`; // Thêm state để bảo mật

// Hàm xử lý đăng nhập Google
function handleGoogleLogin() {
  const width = 500;
  const height = 600;
  const left = (window.innerWidth - width) / 2;
  const top = (window.innerHeight - height) / 2;
  const authWindow = window.open(LINK_GET_TOKEN, 'GoogleAuth', `width=${width},height=${height},left=${left},top=${top}`);

  if (!authWindow) {
    alert('Please allow popups for this site to log in with Google.');
    return;
  }

  // Lắng nghe tin nhắn từ popup khi hoàn tất
  window.addEventListener('message', (event) => {
    if (event.origin === 'http://localhost:63342') { // Kiểm tra nguồn hợp lệ
      const hash = event.data || window.location.hash.substring(1); // Lấy hash từ popup hoặc URL
      const params = new URLSearchParams(hash);
      const accessToken = params.get('access_token');
      if (accessToken) {
        console.log('Access Token:', accessToken);
        // Gọi API để lấy thông tin người dùng
        fetch('https://www.googleapis.com/oauth2/v3/userinfo', {
          headers: { Authorization: `Bearer ${accessToken}` }
        })
        .then(response => {
          if (!response.ok) throw new Error('Failed to fetch user info');
          return response.json();
        })
        .then(data => {
          console.log('User Info:', data);
          // Lưu thông tin người dùng (ví dụ: email) và chuyển hướng
          sessionStorage.setItem('user_id', data.email); // Sử dụng email làm user_id tạm thời
          console.log("Saved user_id to sessionStorage:", data.email);
          window.location.href = '/home'; // Chuyển hướng sau khi đăng nhập
          authWindow.close();
        })
        .catch(error => {
          console.error('Error fetching user info:', error);
          alert('Error during Google login: ' + error.message);
        });
      } else {
        console.error('No access token received');
        alert('Login failed. Please try again.');
      }
    }
  }, { once: true }); // Chỉ lắng nghe một lần
}

// Gắn sự kiện cho nút Google khi DOM sẵn sàng
document.addEventListener('DOMContentLoaded', () => {
  const googleButton = document.querySelector('.google-btn');
  if (googleButton) {
    googleButton.addEventListener('click', handleGoogleLogin);
  } else {
    console.error('Google button not found!');
  }
});