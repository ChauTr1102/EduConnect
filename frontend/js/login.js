// Xử lý form đăng nhập truyền thống
document.getElementById('login-form').addEventListener('submit', (e) => {
  e.preventDefault();
  const form = e.target;
  const username = form.querySelector('input[type="text"]').value;
  const password = form.querySelector('input[type="password"]').value;

  const data = {
    user_name: username,
    password: password
  };

  fetch("/api/check_login/", {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify(data)
  })
  .then(response => response.json())
  .then(result => {
    console.log("Server response:", result);
    if (result !== 0) {
      sessionStorage.setItem('user_id', result);
      window.location.href = '/home';
    } else {
      alert("Tên đăng nhập hoặc mật khẩu không đúng.");
    }
  })
  .catch(error => {
    console.error("Error sending data:", error);
    alert("Lỗi kết nối: " + error.message);
  });
});

// Back to account selection page
document.querySelector('.register-link').addEventListener('click', (e) => {
  e.preventDefault();
  window.location.href = 'account_registration.html'; // Thay đổi từ index.html sang account_registration.html
});

// Google OAuth integration
///auth/userinfo.email
///auth/userinfo.profile
const CLIENT_ID = "353112133927-rfs7v2f19lqrt5d5ina11dqpchaqtqhr.apps.googleusercontent.com";

const LINK_GET_TOKEN = `https://accounts.google.com/o/oauth2/v2/auth?` +
  `scope=https://www.googleapis.com/auth/userinfo.email%20https://www.googleapis.com/auth/userinfo.profile` +
  `&response_type=token` +
  `&redirect_uri=https://educonnect.id.vn/` +
  `&client_id=${CLIENT_ID}` +
  `&state=state_parameter_passthrough_value`;

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

  window.addEventListener('message', (event) => {
    if (event.origin === 'https://educonnect.id.vn') {
      const hash = event.data || window.location.hash.substring(1);
      const params = new URLSearchParams(hash);
      const accessToken = params.get('access_token');
      if (accessToken) {
        console.log('Access Token:', accessToken);
        fetch('https://www.googleapis.com/oauth2/v3/userinfo', {
          headers: { Authorization: `Bearer ${accessToken}` }
        })
        .then(response => {
          if (!response.ok) throw new Error('Failed to fetch user info');
          return response.json();
        })
        .then(data => {
          console.log('User Info:', data);
          sessionStorage.setItem('user_id', data.email);
          window.location.href = 'https://educonnect.id.vn/home'; // Chuyển hướng đến trang chủ
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
  }, { once: true });
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