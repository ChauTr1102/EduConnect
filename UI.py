import streamlit as st
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Tiêu đề ứng dụng
st.title("Ứng dụng Streamlit đơn giản")

# Thêm một thanh trượt để chọn số lượng điểm dữ liệu
n_points = st.slider("Chọn số lượng điểm dữ liệu:", 10, 100, 50)

# Tạo dữ liệu ngẫu nhiên
data = pd.DataFrame({
    "x": np.arange(n_points),
    "y": np.random.randn(n_points)
})
# Hiển thị bảng dữ liệu
st.write("Dữ liệu mẫu:")
st.dataframe(data)

# Vẽ biểu đồ
st.write("Biểu đồ đường:")
fig, ax = plt.subplots()
ax.plot(data["x"], data["y"], label="Dữ liệu ngẫu nhiên")
ax.set_xlabel("X")
ax.set_ylabel("Y")
ax.legend()
st.pyplot(fig)
# Thêm một nút để tương tác
if st.button("Tạo lại dữ liệu"):
    st.write("Dữ liệu đã được làm mới!")


