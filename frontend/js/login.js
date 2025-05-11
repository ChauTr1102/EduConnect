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

        if (result === true) {

            window.location.href = 'home.html';
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
    window.location.href = 'index.html';
});