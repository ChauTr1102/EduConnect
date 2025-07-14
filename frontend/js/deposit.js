document.addEventListener('DOMContentLoaded', () => {
  const amountInput = document.getElementById('amountInput');
  const noteInput = document.getElementById('noteInput'); // Thêm này
  const depositBtn = document.getElementById('depositBtn');
  const errorMsg = document.getElementById('errorMsg');
  const payFrame = document.getElementById('payFrame');

  const userId = sessionStorage.getItem('user_id'); // Lấy user_id đã lưu
    if (userId) {
        console.log(userId);
        fetch(`/api/get_user_balance?user_id=${userId}`)
            .then(response => response.json())
            .then(data => {
                // Nếu trả về dạng { balance: ... }
                document.querySelector('.credit-icon').textContent = `${data} VND`;
                sessionStorage.setItem('user_balance', data);
            })
            .catch(error => {
                console.error("Không lấy được số dư tài khoản:", error);
                document.querySelector('.credit-icon').textContent = "0.0 VND";
            });
    } else {
        // Nếu không tìm thấy user_id thì cho hiện mặc định
        document.querySelector('.credit-icon').textContent = "0.0 VND";
    }

    document.querySelector('.credit-icon').addEventListener('click', function() {
    window.location.href = '/deposit';});

  amountInput.addEventListener('input', () => {
    const val = Number(amountInput.value);
    if (val >= 1000) {
      depositBtn.disabled = false;
      errorMsg.textContent = '';
    } else {
      depositBtn.disabled = true;
      errorMsg.textContent = 'Số tiền tối thiểu là 1.000 VNĐ';
      payFrame.style.display = 'none';
      payFrame.src = '';
    }
  });

  depositBtn.addEventListener('click', async () => {
    const userId = sessionStorage.getItem("user_id");
    const amountValue = Number(amountInput.value);
    let message = noteInput.value.trim(); // Get the note content
    if (message === "") {
        message = "Nạp tiền vào Educonnect"; // Set default if empty
    }// Lấy nội dung ghi chú

    if (amountValue < 1000) return;

    depositBtn.disabled = true;
    depositBtn.textContent = 'Đang tạo...';

    try {
      const res = await fetch('/api/create-payment-link', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({user_id: userId, amount: amountValue, message: message })
      });
      const data = await res.json();

      if (res.ok && data.checkoutUrl) {
        payFrame.src = data.checkoutUrl;
        payFrame.style.display = 'block';
      } else {
        throw new Error(data.detail || 'Lỗi khi tạo link thanh toán.');
      }
    } catch (err) {
      errorMsg.textContent = err.message;
      payFrame.style.display = 'none';
      payFrame.src = '';
    } finally {
      depositBtn.disabled = false;
      depositBtn.textContent = 'Nạp Tiền';
    }
  });

});
