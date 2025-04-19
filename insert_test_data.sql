-- 2.1 Users
INSERT INTO users (user_id, username, password, name, birth_date, gender, email, address)
VALUES
  -- students
  ('user_001','quang11','hashed_pw_01','Nguyễn Quang','2008-05-12','Male','quang11@gmail.com','Thanh Xuân, Hà Nội'),
  ('user_002','linh_hs','hashed_pw_02','Trần Linh','2007-10-03','Female','linh@gmail.com','Đống Đa, Hà Nội'),
  ('user_003','minh_hs','hashed_pw_03','Phạm Minh','2008-02-20','Male','minh@gmail.com','Cầu Giấy, Hà Nội'),
  ('user_004','thu_hs','hashed_pw_04','Lê Thu','2007-09-15','Female','thu@gmail.com','Hoàng Mai, Hà Nội'),
  ('user_005','son_hs','hashed_pw_05','Đỗ Sơn','2008-04-22','Male','son@gmail.com','Hai Bà Trưng, Hà Nội'),
  ('user_006','hanh_hs','hashed_pw_06','Ngô Hạnh','2007-06-01','Female','hanh@gmail.com','Ba Đình, Hà Nội'),
  ('user_007','khoa_hs','hashed_pw_07','Vũ Khoa','2008-07-19','Male','khoa@gmail.com','Long Biên, Hà Nội'),
  ('user_008','thao_hs','hashed_pw_08','Bùi Thảo','2007-12-30','Female','thao@gmail.com','Thanh Trì, Hà Nội'),
  ('user_009','hoang_hs','hashed_pw_09','Lý Hoàng','2008-08-09','Male','hoang@gmail.com','Nam Từ Liêm, Hà Nội'),
  ('user_010','mai_hs','hashed_pw_10','Đặng Mai','2007-11-17','Female','mai@gmail.com','Bắc Từ Liêm, Hà Nội'),
  -- teachers
  ('user_011','thanhgv','hashed_pw_11','Ngô Thanh','1995-03-01','Male','thanh@gmail.com','Cầu Giấy, Hà Nội'),
  ('user_012','ha_teacher','hashed_pw_12','Nguyễn Hà','1992-06-11','Female','ha@gmail.com','Đống Đa, Hà Nội'),
  ('user_013','duy_teacher','hashed_pw_13','Lê Duy','1990-09-21','Male','duy@gmail.com','Thanh Xuân, Hà Nội'),
  ('user_014','loan_teacher','hashed_pw_14','Phan Loan','1994-05-15','Female','loan@gmail.com','Hai Bà Trưng, Hà Nội'),
  ('user_015','kiengv','hashed_pw_15','Trần Kiên','1991-07-02','Male','kien@gmail.com','Ba Đình, Hà Nội'),
  ('user_016','hoa_teacher','hashed_pw_16','Đoàn Hoa','1993-01-19','Female','hoa@gmail.com','Hoàng Mai, Hà Nội'),
  ('user_017','long_teacher','hashed_pw_17','Phùng Long','1989-12-05','Male','long@gmail.com','Tây Hồ, Hà Nội'),
  ('user_018','thuong_teacher','hashed_pw_18','Đặng Thương','1996-10-25','Female','thuong@gmail.com','Long Biên, Hà Nội'),
  ('user_019','minhgv','hashed_pw_19','Lý Minh','1995-04-17','Male','minhgv@gmail.com','Thanh Trì, Hà Nội'),
  ('user_020','phuonggv','hashed_pw_20','Nguyễn Phương','1992-08-03','Female','phuong@gmail.com','Nam Từ Liêm, Hà Nội')
;

-- 2.2 Students
INSERT INTO students (student_id, introduction, hobby)
VALUES
  ('user_001','Em học lớp 11, cần cải thiện môn Toán.','Đọc sách, vẽ'),
  ('user_002','Em đang ôn thi đại học, cần gia sư môn Văn.','Viết truyện, chụp ảnh'),
  ('user_003','Học lớp 10, yếu Hóa.','Chơi game, nghe nhạc'),
  ('user_004','Lớp 12, cần người luyện đề tiếng Anh.','Xem phim, viết blog'),
  ('user_005','Học lực trung bình, cần người truyền cảm hứng học Toán.','Bơi lội, đi dạo'),
  ('user_006','Em cần người giúp ôn thi học kỳ Sinh.','Đọc truyện, vẽ tay'),
  ('user_007','Lớp 11, đang lo lắng về môn Lý.','Cờ vua, trồng cây'),
  ('user_008','Cần gia sư Hóa cho kỳ thi tuyển sinh.','Thể thao, vẽ'),
  ('user_009','Muốn học Toán từ cơ bản đến nâng cao.','Đọc truyện tranh, guitar'),
  ('user_010','Cần củng cố kiến thức Văn.','Làm thơ, đi phượt')
;

-- 2.3 Teachers
INSERT INTO teachers (teacher_id, introduction, degree, experience, teaching_style, hobby)
VALUES
  ('user_011','GV Toán nhiều năm kinh nghiệm.','Thạc sĩ Toán học','5 năm dạy kèm THPT',
   'Phong cách dạy chậm rãi, chắc chắn, giải thích từng bước bằng ví dụ cụ thể. Luôn bắt đầu từ nền tảng cơ bản rồi mới mở rộng nâng cao. Tạo môi trường thoải mái để học sinh không sợ sai.','Chạy bộ'),
  ('user_012','Chuyên Văn, luyện thi đại học.','Cử nhân SP Văn','7 năm luyện thi',
   'Ưu tiên phân tích theo chiều sâu, hướng học sinh tư duy phản biện và cảm thụ văn học qua trải nghiệm cá nhân. Luôn đưa ví dụ gần gũi để học sinh dễ liên hệ.','Du lịch'),
  ('user_013','Giỏi Hóa, học viên cao học.','Thạc sĩ Hóa học','4 năm dạy thêm',
   'Hướng dẫn qua sơ đồ tư duy và video minh họa. Bài giảng cô đọng, dễ hiểu, luôn kết hợp lý thuyết với bài tập thực tế. Tập trung giải thích bản chất phản ứng hoá học.','Nấu ăn'),
  ('user_014','GV tiếng Anh, từng sống ở Anh.','Thạc sĩ Ngôn ngữ','6 năm giảng dạy',
   'Tập trung vào giao tiếp thực tế, luyện phản xạ bằng cách đặt tình huống. Kết hợp nhiều công cụ học như podcast, phim ảnh. Học sinh được sửa lỗi cá nhân rất kỹ.','Xem phim nước ngoài'),
  ('user_015','Chuyên ôn thi Toán lớp 9-12.','Cử nhân Toán','8 năm kinh nghiệm',
   'Dạy theo chuyên đề, bám sát chương trình sách giáo khoa và các dạng đề thi. Có bộ đề riêng theo từng cấp độ. Luôn giúp học sinh nắm phương pháp giải chứ không học vẹt.','Cafe sách'),
  ('user_016','Yêu Sinh học, truyền cảm hứng học.','Thạc sĩ Sinh học','5 năm đứng lớp',
   'Luôn tạo liên kết giữa bài học và đời sống thực tế. Đặt câu hỏi mở để học sinh suy nghĩ chủ động. Tổ chức mini game, sơ đồ tư duy để nhớ lâu.','Leo núi'),
  ('user_017','GV Lý sáng tạo, dùng ví dụ sinh động.','Cử nhân SP Lý','6 năm',
   'Phân tích hiện tượng vật lý qua thí nghiệm mô phỏng. Giải thích các khái niệm bằng hoạt hình hoặc ví dụ gần gũi. Giúp học sinh hình dung được bài học chứ không học thuộc.','Làm mô hình'),
  ('user_018','Hóa học vui, dễ hiểu.','Cử nhân SP Hóa','5 năm',
   'Tạo hứng thú bằng cách giải thích hóa học qua trò chơi, hoạt hình. Nhấn mạnh các mẹo ghi nhớ nhanh. Mỗi buổi học đều có mini quiz để ôn tập.','DIY hóa học'),
  ('user_019','Toán nền tảng tới nâng cao.','Thạc sĩ Toán học','9 năm luyện thi',
   'Chú trọng việc làm chắc phần lý thuyết nền tảng. Sử dụng sơ đồ cây và các bộ đề phân loại. Theo sát tiến độ từng học sinh để điều chỉnh chiến lược ôn tập.','Đọc sách'),
  ('user_020','Chuyên Văn sáng tác, tư duy phản biện.','Cử nhân Văn học','6 năm',
   'Hướng dẫn học sinh viết theo khung ý rõ ràng, giúp nâng cao vốn từ. Tập trung luyện viết theo chủ đề xã hội và sáng tạo. Có phản biện nhóm để tăng kỹ năng lập luận.','Văn thơ')
;

INSERT INTO posts (post_id, user_id, content) VALUES
-- post_001 - Quang (Toán)
('post_001', 'user_001',
'📌 *TÌM GIA SƯ TOÁN LỚP 11 - CẦN NGƯỜI “HỒI SINH” TINH THẦN HỌC TẬP*\n\
Em tên là Quang, học sinh lớp 11 trường THPT Nhân Chính. Em từng khá ổn môn Toán, nhưng từ học kỳ 1 lớp 11, khi chương trình bắt đầu chuyển sang các chuyên đề khó như hàm số, giới hạn, đạo hàm và hình học không gian, em tụt lại. Dù chăm chỉ nhưng em học không hiệu quả, làm bài sai nhiều, điểm kiểm tra thấp khiến em ngày càng mất tự tin và không còn động lực học.\n\n\
Em mong muốn tìm được một anh/chị/thầy/cô có thể:\n\
• Dạy lại em từ những phần nền tảng với cách tiếp cận gần gũi, dễ hiểu\n\
• Giải thích bản chất, không chỉ đưa ra công thức rồi bắt chép\n\
• Sửa lỗi sai trong cách trình bày, giúp em tránh lặp lại lỗi cũ\n\
• Truyền cảm hứng để em cảm thấy Toán không còn khô khan, nhàm chán\n\n\
🎯 Mục tiêu của em là: lấy lại kiến thức cơ bản lớp 11, chuẩn bị nền tảng ôn thi đại học, và đạt tối thiểu 7 điểm trong các bài thi học kỳ.\n\
🕒 Em rảnh các buổi tối T2 - T4 - T6 sau 19h30, hoặc cả ngày Chủ nhật.\n\
💰 Học phí: từ 200k - 250k/buổi. Em có thể học online (qua Google Meet) hoặc offline nếu gần khu vực Thanh Xuân, Hà Nội.\n\n\
Em là người nghiêm túc, chịu khó, chỉ là đang bị “mất lửa”. Em mong sẽ tìm được người giúp em “bật lại mode học hành”.'),

-- post_002 - Linh (Văn)
('post_002', 'user_002',
'📖 *TÌM GIA SƯ VĂN ÔN THI ĐẠI HỌC - “VIẾT GÌ CŨNG DỞ” LÀ EM 😔*\n\
Chào các thầy cô và anh chị, em là Linh – học sinh lớp 12, đang ôn thi đại học và cực kỳ khủng hoảng với môn Ngữ Văn. Em không ghét môn Văn, em thích đọc sách, xem phim, thậm chí rất hay suy nghĩ về cuộc sống. Nhưng đến khi viết bài thì em lại... “viết không ra chữ”. Em lạc đề, triển khai ý lộn xộn, bài văn không có trọng tâm, kết bài thì cạn từ. \n\n\
Em cần một cô giáo có thể:\n\
• Giúp em tư duy logic hơn trong việc lập dàn ý\n\
• Luyện từng đoạn văn cụ thể (mở – thân – kết)\n\
• Phân tích các tác phẩm trọng tâm sát đề thi\n\
• Chỉnh sửa bài viết chi tiết, góp ý thẳng thắn nhưng nhẹ nhàng\n\
• Truyền được cảm hứng viết – biến môn Văn từ “nỗi sợ” thành điều thú vị\n\n\
🎯 Em đặt mục tiêu đạt ít nhất 7 điểm Văn trong kỳ thi tốt nghiệp. Em cần bắt đầu từ căn bản vì đang bị “mất nền”.\n\
🕒 Thời gian học: tối 2 - 4 - 6 hoặc sáng cuối tuần.\n\
💻 Ưu tiên học online qua Google Meet.\n\
💰 Học phí: 200k - 230k/buổi.\n\n\
Em rất mong tìm được một người có thể đồng hành và kiên nhẫn, vì em tin nếu có người hướng dẫn đúng cách, em có thể tiến bộ nhanh chóng.'),

-- post_003 - Minh (Hóa)
('post_003', 'user_003',
'🧪 *CẦN GIA SƯ HÓA CƠ BẢN - CỨU VỚT MỘT TÂM HỒN ĐANG MÊ MÀN HÌNH PHẢN ỨNG*\n\
Em là Minh, học sinh lớp 10. Em thấy Hóa học rất... đẹp và kỳ diệu, nhưng chỉ là khi xem video TikTok 🤯. Còn khi vào bài học trên lớp thì em không hiểu gì, không biết bắt đầu từ đâu. Em bị rối khi học bảng tuần hoàn, không hiểu được phản ứng oxi hóa – khử và toàn bị nhầm lẫn giữa chất này với chất kia. Em đã thử học thêm online nhưng học mãi không vô đầu.\n\n\
Em cần một gia sư có thể:\n\
• Dạy lại từ gốc, kể cả những kiến thức lớp 8 – 9 nếu cần\n\
• Giải thích bằng sơ đồ, ví dụ đời thường để em dễ nhớ\n\
• Luyện em làm bài tập theo mức độ từ dễ → trung bình → nâng cao\n\
• Động viên và cho bài tập thực hành ngắn sau mỗi buổi học\n\n\
📚 Em muốn học các phần: hóa trị, phản ứng, dãy hoạt động kim loại, nhận biết chất.\n\
🕒 Em học buổi tối từ 19h, các ngày chẵn trong tuần (T2 - T4 - T6).\n\
💻 Online qua Zoom hoặc Google Meet là tốt nhất.\n\
💰 Em có thể chi trả khoảng 200k/buổi.\n\n\
Em học không nhanh, nhưng cực kỳ chăm chỉ. Mong thầy/cô kiên nhẫn và có phong cách dạy vui vẻ, khơi gợi được sự tò mò của em!'),

-- post_004 - Thu (Tiếng Anh)
('post_004', 'user_004',
'🇬🇧 *TÌM CÔ GIÁO TIẾNG ANH ÔN THI - NGHE KHÔNG RA, VIẾT KHÔNG XONG* 😥\n\
Em là Thu, lớp 12. Trong kỳ thi đại học sắp tới, em muốn lấy tiếng Anh làm điểm mạnh, nhưng hiện tại thì lại đang rất yếu. Em không nghe được audio, khi viết essay thì thiếu từ vựng, sai ngữ pháp, thiếu ý. Em đã thử học theo app, xem phim có phụ đề, nhưng không hiệu quả vì không có người chỉnh sửa.\n\n\
Em muốn tìm cô giáo:\n\
• Luyện phản xạ Listening bằng cách làm đề từng dạng (MCQ, điền từ…)\n\
• Hướng dẫn viết từng dạng Writing task, sửa bài chi tiết\n\
• Mở rộng vốn từ theo chủ đề: môi trường, giáo dục, xã hội, công nghệ\n\
• Giúp em sửa phát âm và luyện nói nếu có thể\n\n\
🕒 Em có thể học tối 3 - 5 hoặc sáng T7.\n\
💻 Học online.\n\
💰 Học phí từ 220k - 250k/buổi. \n\n\
Em hy vọng cô giáo có thể truyền cảm hứng và động lực, giúp em vững tin để thi đạt 8.0+ môn tiếng Anh.'),

-- post_005 - Sơn (Toán)
('post_005', 'user_005',
'🔥 *GIA SƯ TOÁN CẦN LẮM NGƯỜI DẪN ĐƯỜNG – EM KHÔNG MUỐN TRẦM CẢM VÌ TOÁN NỮA*\n\
Chào mọi người, em là Sơn – học lớp 11, một học sinh “sợ Toán nhưng lại bắt buộc phải giỏi Toán”. Học lực của em trung bình khá, nhưng riêng Toán thì rất chật vật. Em hiểu bài trên lớp nhưng không biết áp dụng, làm bài sai hoài. Em bị rối trong bất phương trình, cực trị, hệ phương trình, đạo hàm…\n\n\
Em muốn có:\n\
• Một thầy/cô dạy từ nền, phân tích từng dạng bài đơn giản trước rồi nâng cấp\n\
• Có phương pháp luyện đề theo mức độ, giúp em không bị rối\n\
• Đặc biệt là có sự kiên nhẫn, không la mắng khi em sai hoài 🙏\n\n\
🕒 Thời gian: tối T2 - T4 - T6, sau 19h30. Cuối tuần thì buổi sáng.\n\
💰 Học phí: 220k/buổi.\n\
💻 Online học qua Google Meet hoặc Zalo call đều được.\n\n\
Em cam kết học chăm, làm bài đầy đủ – chỉ cần có người hướng dẫn đúng cách thôi ạ!'),


-- post_006 - Hạnh (Sinh học)
('post_006', 'user_006',
'🧬 *CẦN GIA SƯ SINH CẤP TỐC - CỨU EM KHỎI “CHẾT CHÌM” TRONG DI TRUYỀN HỌC*\n\
Em là Hạnh, học sinh lớp 12. Em chưa từng ghét môn Sinh học, nhưng vì thiếu người định hướng, em bị trôi giữa một “rừng” khái niệm: gen, mã di truyền, ADN, ARN, đột biến, biến dị tổ hợp... Em học rất chăm, ghi chép đầy đủ nhưng vẫn không hiểu, và sắp tới em có bài kiểm tra rất quan trọng.\n\n\
Em muốn tìm một cô giáo có thể:\n\
• Dạy thật chậm, từ vựng dễ hiểu, sử dụng sơ đồ tư duy và ví dụ minh họa\n\
• Chia bài học theo chuyên đề, luyện các dạng trắc nghiệm nâng dần độ khó\n\
• Hướng dẫn cách phân tích đề, làm nhanh mà không sai vặt\n\
• Có thể truyền cho em chút cảm hứng để học không bị căng thẳng\n\n\
🎯 Mục tiêu: ít nhất 7.5 điểm kiểm tra, dần hướng tới ôn thi tốt nghiệp.\n\
🕒 Em rảnh sáng thứ 7, chiều CN, tối T3 - T5.\n\
💰 Học phí mong muốn: 180k - 230k/buổi.\n\
💻 Học online qua Zoom là tiện nhất.\n\n\
Em là người kiên trì, nhưng cần cô giáo có tâm lý tốt để không tạo áp lực thêm. Mong được đồng hành ạ!'),

-- post_007 - Khoa (Vật lý)
('post_007', 'user_007',
'⚡ *TÌM GIA SƯ LÝ - GIẢI THÍCH GIÚP EM “KHÔNG HỌC VẸT” NỮA* 📉\n\
Em là Khoa, học sinh lớp 11. Vật lý với em như một bài nhạc nước ngoài - có giai điệu hay, nhưng không hiểu lời. Những phần như dao động điều hòa, dòng điện xoay chiều, mạch RLC… đọc thì hiểu “na ná” nhưng vào bài tập là em không biết bắt đầu từ đâu.\n\n\
Em cần một thầy/cô:\n\
• Giải thích bản chất hiện tượng lý – ví dụ dễ hình dung (bằng hoạt hình, sơ đồ)\n\
• Hướng dẫn kỹ cách lập phương trình, vẽ đồ thị, suy luận từ đề bài\n\
• Dạy theo hướng ứng dụng thực tế – học là để hiểu, không phải học thuộc\n\
• Luôn động viên khi em làm sai, và tạo môi trường học tích cực\n\n\
📚 Em muốn được học từ cơ bản tới làm đề luyện thi học kỳ.\n\
🕒 Tối T3 - T5 (sau 20h) hoặc sáng CN.\n\
💰 200k - 250k/buổi là hợp lý với khả năng của em.\n\
💻 Em học online hoặc offline nếu ở gần Long Biên, Hà Nội.\n\n\
Hy vọng tìm được người “giải mã” được sự khó hiểu của môn Lý ạ!'),

-- post_008 - Thảo (Hóa vào 10)
('post_008', 'user_008',
'📚 *TÌM GIA SƯ HÓA ÔN VÀO 10 - HỌC NHIỀU MÀ VẪN LUÔN QUÊN 😓*\n\
Em tên là Thảo, năm nay chuẩn bị thi vào lớp 10 chuyên nhưng lại khá yếu môn Hóa. Em đã học hết chương trình, ghi chép cẩn thận, làm đề nhưng lúc kiểm tra lại không làm được. Em bị loạn công thức, nhầm hóa trị, viết sai phương trình phản ứng. Em đang rất áp lực nhưng vẫn quyết tâm cải thiện.\n\n\
Em cần:\n\
• Một cô giáo thật dễ gần, dạy chắc phần lý thuyết – có sơ đồ hóa học giúp ghi nhớ\n\
• Hướng dẫn cách giải bài tập phản ứng, dãy hoạt động kim loại, nhận biết chất\n\
• Có đề luyện theo sát chương trình thi tuyển sinh lớp 10\n\
• Có thể đưa ra kế hoạch học theo tuần để em theo sát mục tiêu\n\n\
🕒 Em học chiều thứ 6 và sáng chủ nhật.\n\
💰 Học phí em có thể trả từ 150k - 200k/buổi.\n\
💻 Học online là tiện nhất vì em ở Thanh Trì.\n\n\
Em hy vọng tìm được một cô giáo kiên nhẫn, nhẹ nhàng và có thể cùng em “cán đích” kỳ thi sắp tới!'),

-- post_009 - Hoàng (Toán 12)
('post_009', 'user_009',
'📘 *GIA SƯ TOÁN 12 - HỌC TỪ NỀN TẢNG, HƯỚNG TỚI THI ĐẠI HỌC*\n\
Em là Hoàng, học sinh lớp 12. Em đã “lướt” qua chương trình Toán lớp 12 một cách rất hời hợt, nên giờ em thấy mình không có đủ nền để bước vào giai đoạn luyện thi. Em muốn được học từ đầu – từng chuyên đề – theo lộ trình rõ ràng để cuối năm không phải “chạy nước rút”.\n\n\
Em mong có:\n\
• Một thầy/cô có kinh nghiệm luyện thi tốt nghiệp, dạy theo hệ thống\n\
• Giải thích rõ ràng, không nhảy bước, sửa bài chi tiết\n\
• Có tài liệu luyện đề và bài tập rèn kỹ năng trình bày\n\
• Có thể tư vấn cách phân bổ thời gian học hiệu quả\n\n\
🕒 Em học tối thứ 2 - 6, hoặc sáng thứ 7.\n\
💻 Online là lựa chọn chính, nhưng nếu thầy/cô gần Nam Từ Liêm, em có thể học trực tiếp.\n\
💰 220k - 270k/buổi.\n\n\
Em không cần người “ép học”, em cần người “giúp học”. Rất mong gặp được thầy/cô phù hợp!'),

-- post_010 - Mai (Văn)
('post_010', 'user_010',
'✍️ *CẦN GIA SƯ VĂN - GIÚP EM BIẾN LỜI NÓI THÀNH CÂU VĂN CÓ Ý NGHĨA* 🎤\n\
Em là Mai, học sinh lớp 12. Em rất thích nói, thích chia sẻ suy nghĩ về các vấn đề xã hội, nhân vật trong tác phẩm văn học, nhưng khi chuyển thành bài viết thì mọi thứ rối tung. Câu không tròn ý, ý không bám đề, văn thiếu chiều sâu. Em cần cô giáo không chỉ giúp em học để thi mà còn học để thể hiện được cá tính trong văn chương.\n\n\
Em mong muốn:\n\
• Được luyện kỹ từng kiểu bài (nghị luận xã hội – nghị luận văn học)\n\
• Được sửa bài viết theo cách góp ý xây dựng, không “gạch xóa” quá nhiều 😅\n\
• Có cơ hội trao đổi và thảo luận để làm giàu ý tưởng viết\n\
• Tạo môi trường học nhẹ nhàng, không căng thẳng\n\n\
🕒 Chiều T4 - T6 hoặc sáng CN.\n\
💻 Em học online qua Google Meet.\n\
💰 Khoảng 200k - 230k/buổi.\n\n\
Em tin nếu được chỉ đúng cách, em sẽ có thể viết được những bài văn có hồn, có chiều sâu hơn.');



