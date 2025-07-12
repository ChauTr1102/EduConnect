//window.addEventListener('message', e => {
//  const { status, cancel, orderCode } = e.data || {};
//  if (!status) return;
//
//  // Ẩn iframe
//  const payFrame = document.getElementById('payFrame');
//  payFrame.style.display = 'none';
//
//  if (cancel === 'true' || status === 'CANCELLED') {
//    alert('⚠️ Giao dịch đã bị hủy.');
//  } else if (status === 'PAID') {
//    alert('✅ Nạp tiền thành công! (orderCode: ' + orderCode + ')');
//    // TODO: Gọi API để cập nhật số dư hoặc reload dữ liệu
//  } else {
//    alert('ℹ️ Giao dịch trạng thái: ' + status);
//  }
//});

document.addEventListener('DOMContentLoaded', () => {
  const amountInput = document.getElementById('amountInput');
  const noteInput = document.getElementById('noteInput'); // Thêm này
  const depositBtn = document.getElementById('depositBtn');
  const errorMsg = document.getElementById('errorMsg');
  const payFrame = document.getElementById('payFrame');

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
    const amountValue = Number(amountInput.value);
    let message = noteInput.value.trim(); // Get the note content
    if (message === "") {
        message = "Nạp tiền vào Educonnect"; // Set default if empty
    }// Lấy nội dung ghi chú

    if (amountValue < 1000) return;

    depositBtn.disabled = true;
    depositBtn.textContent = 'Đang tạo...';

    try {
      const res = await fetch('http://127.0.0.1:8000/create-payment-link', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ amount: amountValue, message: message })
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
