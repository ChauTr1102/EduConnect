-- 10 Students
INSERT INTO users (user_id, username, password, name, birth_date, gender, email, address)
VALUES
('stu_001', 'quang11', 'hashed_pw_01', 'Nguyễn Quang', '2008-05-12', 'Male', 'quang11@gmail.com', 'Thanh Xuân, Hà Nội'),
('stu_002', 'linh_hs', 'hashed_pw_02', 'Trần Linh', '2007-10-03', 'Female', 'linh@gmail.com', 'Đống Đa, Hà Nội'),
('stu_003', 'minh_hs', 'hashed_pw_03', 'Phạm Minh', '2008-02-20', 'Male', 'minh@gmail.com', 'Cầu Giấy, Hà Nội'),
('stu_004', 'thu_hs', 'hashed_pw_04', 'Lê Thu', '2007-09-15', 'Female', 'thu@gmail.com', 'Hoàng Mai, Hà Nội'),
('stu_005', 'son_hs', 'hashed_pw_05', 'Đỗ Sơn', '2008-04-22', 'Male', 'son@gmail.com', 'Hai Bà Trưng, Hà Nội'),
('stu_006', 'hanh_hs', 'hashed_pw_06', 'Ngô Hạnh', '2007-06-01', 'Female', 'hanh@gmail.com', 'Ba Đình, Hà Nội'),
('stu_007', 'khoa_hs', 'hashed_pw_07', 'Vũ Khoa', '2008-07-19', 'Male', 'khoa@gmail.com', 'Long Biên, Hà Nội'),
('stu_008', 'thao_hs', 'hashed_pw_08', 'Bùi Thảo', '2007-12-30', 'Female', 'thao@gmail.com', 'Thanh Trì, Hà Nội'),
('stu_009', 'hoang_hs', 'hashed_pw_09', 'Lý Hoàng', '2008-08-09', 'Male', 'hoang@gmail.com', 'Nam Từ Liêm, Hà Nội'),
('stu_010', 'mai_hs', 'hashed_pw_10', 'Đặng Mai', '2007-11-17', 'Female', 'mai@gmail.com', 'Bắc Từ Liêm, Hà Nội');

-- 10 Teachers
INSERT INTO users (user_id, username, password, name, birth_date, gender, email, address)
VALUES
('tea_001', 'thanhgv', 'hashed_pw_11', 'Ngô Thanh', '1995-03-01', 'Male', 'thanh@gmail.com', 'Cầu Giấy, Hà Nội'),
('tea_002', 'ha_teacher', 'hashed_pw_12', 'Nguyễn Hà', '1992-06-11', 'Female', 'ha@gmail.com', 'Đống Đa, Hà Nội'),
('tea_003', 'duy_teacher', 'hashed_pw_13', 'Lê Duy', '1990-09-21', 'Male', 'duy@gmail.com', 'Thanh Xuân, Hà Nội'),
('tea_004', 'loan_teacher', 'hashed_pw_14', 'Phan Loan', '1994-05-15', 'Female', 'loan@gmail.com', 'Hai Bà Trưng, Hà Nội'),
('tea_005', 'kiengv', 'hashed_pw_15', 'Trần Kiên', '1991-07-02', 'Male', 'kien@gmail.com', 'Ba Đình, Hà Nội'),
('tea_006', 'hoa_teacher', 'hashed_pw_16', 'Đoàn Hoa', '1993-01-19', 'Female', 'hoa@gmail.com', 'Hoàng Mai, Hà Nội'),
('tea_007', 'long_teacher', 'hashed_pw_17', 'Phùng Long', '1989-12-05', 'Male', 'long@gmail.com', 'Tây Hồ, Hà Nội'),
('tea_008', 'thuong_teacher', 'hashed_pw_18', 'Đặng Thương', '1996-10-25', 'Female', 'thuong@gmail.com', 'Long Biên, Hà Nội'),
('tea_009', 'minhgv', 'hashed_pw_19', 'Lý Minh', '1995-04-17', 'Male', 'minhgv@gmail.com', 'Thanh Trì, Hà Nội'),
('tea_010', 'phuonggv', 'hashed_pw_20', 'Nguyễn Phương', '1992-08-03', 'Female', 'phuong@gmail.com', 'Nam Từ Liêm, Hà Nội');


-- Students
INSERT INTO students (student_id, introduction, hobby)
VALUES
('stu_001', 'Em học lớp 11, cần cải thiện môn Toán.', 'Đọc sách, vẽ'),
('stu_002', 'Em đang ôn thi đại học, cần gia sư môn Văn.', 'Viết truyện, chụp ảnh'),
('stu_003', 'Học lớp 10, yếu Hóa.', 'Chơi game, nghe nhạc'),
('stu_004', 'Lớp 12, cần người luyện đề tiếng Anh.', 'Xem phim, viết blog'),
('stu_005', 'Học lực trung bình, cần người truyền cảm hứng học Toán.', 'Bơi lội, đi dạo'),
('stu_006', 'Em cần người giúp ôn thi học kỳ Sinh.', 'Đọc truyện, vẽ tay'),
('stu_007', 'Lớp 11, đang lo lắng về môn Lý.', 'Cờ vua, trồng cây'),
('stu_008', 'Cần gia sư Hóa cho kỳ thi tuyển sinh.', 'Thể thao, vẽ'),
('stu_009', 'Muốn học Toán từ cơ bản đến nâng cao.', 'Đọc truyện tranh, guitar'),
('stu_010', 'Cần củng cố kiến thức Văn.', 'Làm thơ, đi phượt');


INSERT INTO teachers (teacher_id, introduction, degree, experience, teaching_style, hobby)
VALUES
('tea_001', 'GV Toán nhiều năm kinh nghiệm.', 'Thạc sĩ Toán học', '5 năm dạy kèm THPT',
 'Phong cách dạy chậm rãi, chắc chắn, giải thích từng bước bằng ví dụ cụ thể. Luôn bắt đầu từ nền tảng cơ bản rồi mới mở rộng nâng cao. Tạo môi trường thoải mái để học sinh không sợ sai.', 
 'Chạy bộ'),

('tea_002', 'Chuyên Văn, luyện thi đại học.', 'Cử nhân SP Văn', '7 năm luyện thi',
 'Ưu tiên phân tích theo chiều sâu, hướng học sinh tư duy phản biện và cảm thụ văn học qua trải nghiệm cá nhân. Luôn đưa ví dụ gần gũi để học sinh dễ liên hệ.', 
 'Du lịch'),

('tea_003', 'Giỏi Hóa, học viên cao học.', 'Thạc sĩ Hóa học', '4 năm dạy thêm',
 'Hướng dẫn qua sơ đồ tư duy và video minh họa. Bài giảng cô đọng, dễ hiểu, luôn kết hợp lý thuyết với bài tập thực tế. Tập trung giải thích bản chất phản ứng hoá học.', 
 'Nấu ăn'),

('tea_004', 'GV tiếng Anh, từng sống ở Anh.', 'Thạc sĩ Ngôn ngữ', '6 năm giảng dạy',
 'Tập trung vào giao tiếp thực tế, luyện phản xạ bằng cách đặt tình huống. Kết hợp nhiều công cụ học như podcast, phim ảnh. Học sinh được sửa lỗi cá nhân rất kỹ.', 
 'Xem phim nước ngoài'),

('tea_005', 'Chuyên ôn thi Toán lớp 9-12.', 'Cử nhân Toán', '8 năm kinh nghiệm',
 'Dạy theo chuyên đề, bám sát chương trình sách giáo khoa và các dạng đề thi. Có bộ đề riêng theo từng cấp độ. Luôn giúp học sinh nắm phương pháp giải chứ không học vẹt.', 
 'Cafe sách'),

('tea_006', 'Yêu Sinh học, truyền cảm hứng học.', 'Thạc sĩ Sinh học', '5 năm đứng lớp',
 'Luôn tạo liên kết giữa bài học và đời sống thực tế. Đặt câu hỏi mở để học sinh suy nghĩ chủ động. Tổ chức mini game, sơ đồ tư duy để nhớ lâu.', 
 'Leo núi'),

('tea_007', 'GV Lý sáng tạo, dùng ví dụ sinh động.', 'Cử nhân SP Lý', '6 năm',
 'Phân tích hiện tượng vật lý qua thí nghiệm mô phỏng. Giải thích các khái niệm bằng hoạt hình hoặc ví dụ gần gũi. Giúp học sinh hình dung được bài học chứ không học thuộc.', 
 'Làm mô hình'),

('tea_008', 'Hóa học vui, dễ hiểu.', 'Cử nhân SP Hóa', '5 năm',
 'Tạo hứng thú bằng cách giải thích hóa học qua trò chơi, hoạt hình. Nhấn mạnh các mẹo ghi nhớ nhanh. Mỗi buổi học đều có mini quiz để ôn tập.', 
 'DIY hóa học'),

('tea_009', 'Toán nền tảng tới nâng cao.', 'Thạc sĩ Toán học', '9 năm luyện thi',
 'Chú trọng việc làm chắc phần lý thuyết nền tảng. Sử dụng sơ đồ cây và các bộ đề phân loại. Theo sát tiến độ từng học sinh để điều chỉnh chiến lược ôn tập.', 
 'Đọc sách'),

('tea_010', 'Chuyên Văn sáng tác, tư duy phản biện.', 'Cử nhân Văn học', '6 năm',
 'Hướng dẫn học sinh viết theo khung ý rõ ràng, giúp nâng cao vốn từ. Tập trung luyện viết theo chủ đề xã hội và sáng tạo. Có phản biện nhóm để tăng kỹ năng lập luận.', 
 'Văn thơ');



INSERT INTO posts (post_id, user_id, content) VALUES
-- Quang
('post_001', 'stu_001', 
'Tìm gia sư Toán cứu vớt cuộc đời em!\n\
Chào mọi người, em là Quang, học lớp 11 mà Toán cứ như một vòng lặp học → quên → hoang mang → làm sai 😩\n\
Em cần một anh/chị gia sư chill chill nhưng dạy chắc kiến thức, giúp em lấy lại phong độ với mấy phần Hàm số, Đạo hàm, Giới hạn, Hình học không gian.\n\
🎯 Mục tiêu: qua môn ngon lành, làm bài không sợ sai và có tí nền ôn thi đại học.\n\
🕒 Lịch học: Tối 3 - 5 - 7 (20h - 22h), cuối tuần cũng được nếu thầy/cô rảnh.\n\
💰 Học phí: 200k - 250k/buổi. Học online hoặc offline nếu gần Thanh Xuân, Hà Nội.\n\
📌 Yêu cầu: Dạy dễ hiểu, không nhồi lý thuyết nhưng chắc gốc, hỗ trợ bài tập và sửa lỗi sai chi tiết.'),

-- Linh
('post_002', 'stu_002', 
'Tìm gia sư Văn ôn thi đại học gấp gáp nhưng chill 😭\n\
Em là Linh, học sinh lớp 12, và môn Văn đang là ác mộng lớn nhất trong kỳ thi tới. Em cần một cô giáo nhẹ nhàng nhưng có cách khai mở tư duy viết bài và ôn luyện chắc các đề thi.\n\
📖 Các phần cần luyện: Đọc hiểu văn bản, nghị luận xã hội và văn học. Càng nhiều tips càng tốt.\n\
🕒 Lịch học: Buổi sáng T7 & CN hoặc tối 2 - 4.\n\
💰 Học phí: 180k - 230k/buổi, học online qua Zoom.\n\
🎯 Ưu tiên người từng luyện thi đại học và có cách tiếp cận linh hoạt, không ép khuôn.'),

-- Minh
('post_003', 'stu_003', 
'Cần cứu môn HÓA trước khi “nổ não” vì phản ứng! 🧪\n\
Em tên Minh, lớp 10, môn Hóa là nỗi lo lớn nhất. Em học lý thuyết không đến nỗi nhưng vào bài tập là... xong phim.\n\
📌 Muốn học từ đầu phần hoá vô cơ + nhận biết chất, cân bằng phản ứng, dãy điện hóa.\n\
🕒 Thời gian linh hoạt, học tối từ 19h trở đi, 2-3 buổi/tuần.\n\
💰 Học phí tầm 200k/buổi.\n\
🧠 Cần gia sư dạy kỹ phần bản chất, cho ví dụ đời thường, có kiên nhẫn cao và không chê học sinh gà.'),

-- Thu
('post_004', 'stu_004', 
'Tìm cô giáo tiếng Anh luyện thi đại học (gấp gáp & có tâm) 🇬🇧\n\
Em là Thu, đang luyện thi đại học và phần Listening + Writing là điểm yếu nhất. Em cần một cô giáo giúp em tăng phản xạ nghe nói, mở rộng vốn từ, và chỉnh sửa chi tiết khi viết.\n\
🎧 Chủ đề mong muốn: đời sống, giáo dục, môi trường, công nghệ.\n\
🕒 Lịch học: 2 buổi/tuần, tối T3 - T5 hoặc sáng T7.\n\
💰 Học phí: 220k - 250k/buổi. Chỉ cần học online qua Google Meet.\n\
👩‍🏫 Ưu tiên giáo viên từng học/đi nước ngoài hoặc có phát âm chuẩn, dễ nghe.'),

-- Sơn
('post_005', 'stu_005', 
'Gia sư Toán truyền lửa cần gấp 🔥\n\
Em tên là Sơn, lớp 11. Từ đầu năm đến giờ học Toán kiểu cho có, giờ sắp kiểm tra mà hoảng loạn luôn.\n\
Muốn tìm thầy/cô dạy từ nền tảng đến giải đề, đặc biệt là Đại số: bất phương trình, hệ phương trình, bài toán cực trị.\n\
🕒 Lịch: tối T2 - T4 - T6, từ 19h30, hoặc cuối tuần.\n\
💰 Học phí: linh hoạt từ 200k/buổi.\n\
🎯 Cần người hiểu tâm lý, không ép quá nhiều bài tập nhưng theo sát tiến độ.'),

-- Hạnh
('post_006', 'stu_006', 
'Cần gia sư Sinh học cho kỳ kiểm tra cuối kỳ 🧬\n\
Em là Hạnh, học sinh lớp 12. Sắp tới có bài kiểm tra Sinh nhưng em khá yếu phần Di truyền học, Gen – ADN – phân li độc lập, v.v.\n\
🎯 Mục tiêu: 7+ điểm kiểm tra. Học qua Zoom là tốt nhất.\n\
🕒 Có thể học sáng thứ 7 & chiều CN.\n\
💰 Học phí mong muốn: 180k - 230k/buổi.\n\
📌 Cần người dạy rõ ràng, có sơ đồ tư duy, không nhồi nhét.'),

-- Khoa
('post_007', 'stu_007', 
'Lý lớp 11 khiến em chật vật 😵\n\
Mấy phần Điện học, Mạch điện xoay chiều, Dao động cơ em học rồi nhưng không hiểu bản chất, toàn học vẹt.\n\
Muốn tìm thầy/cô dạy logic, không học kiểu “trăm công thức”. Em cần giải thích gốc rễ vấn đề.\n\
🕒 Tối 3-5 hoặc sáng CN.\n\
💰 Học phí 200k/buổi.\n\
📌 Em cần người có ví dụ sinh động, giảng bài lôi cuốn và có bài tập mẫu.'),

-- Thảo
('post_008', 'stu_008', 
'Tìm gia sư Hóa ôn vào 10 cho bé gái đáng yêu đây ạ! 😇\n\
Em là Thảo, chuẩn bị thi vào lớp 10, môn Hóa hơi “tù”. Đã học hết chương trình nhưng chưa chắc phần bài tập.\n\
📚 Cần học kỹ phản ứng, giải bài tập, nhận biết chất, viết phương trình.\n\
🕒 Lịch học: chiều T6 và sáng CN.\n\
💰 Học phí: 150k - 200k/buổi. Online là tốt nhất.\n\
🎯 Ưu tiên cô giáo nhẹ nhàng, có cách dạy ngắn gọn và dễ nhớ.'),

-- Hoàng
('post_009', 'stu_009', 
'Tìm thầy/cô dạy Toán lớp 12 từ cơ bản tới luyện thi 💪\n\
Em học Toán hơi yếu nền, muốn được dạy lại từ đầu: hàm số, đồ thị, giới hạn, tích phân. Sau đó sẽ luyện đề nâng cao để ôn thi đại học.\n\
🕒 Học vào buổi tối (T2-T6), có thể học 1-1 qua Zoom.\n\
💰 Học phí mong muốn: 220k - 270k/buổi.\n\
📌 Cần người có lộ trình rõ ràng, biết theo dõi tiến độ học sinh.'),

-- Mai
('post_010', 'stu_010', 
'Gia sư Văn cho đứa lười viết nhưng thích nói chuyện đây ạ 😅\n\
Em là Mai, học sinh lớp 12, rất ngại viết bài Văn nhưng lại thích tranh luận, chia sẻ. Cần cô giáo giúp em biến mấy thứ “nói được mà không viết nổi” thành đoạn văn hay.\n\
📚 Muốn học viết theo bố cục, có tư duy rõ ràng.\n\
🕒 Lịch học: chiều T4 & T6, hoặc cuối tuần sáng.\n\
💰 Học phí: khoảng 200k - 230k/buổi.\n\
📌 Ưu tiên người có kỹ năng truyền cảm hứng và chịu khó chỉnh sửa từng bài. 😊');
