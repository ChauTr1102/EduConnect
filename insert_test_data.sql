INSERT INTO users (user_id, username, password, name, birth_date, gender, email, address)
VALUES
  -- students (user_001 - user_010)
  ('user_001','quang11','hashed_pw_01','Nguyễn Minh Quang','2008-05-12','Male','user_001@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_002','linh_hs','hashed_pw_02','Trần Thùy Linh','2007-10-03','Female','user_002@example.com','Quận Đống Đa, Hà Nội'),
  ('user_003','minh_hs','hashed_pw_03','Phạm Gia Minh','2008-02-20','Male','user_003@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_004','thu_hs','hashed_pw_04','Lê Hải Thu','2007-09-15','Female','user_004@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_005','son_hs','hashed_pw_05','Đỗ Hoài Sơn','2008-04-22','Male','user_005@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_006','hanh_hs','hashed_pw_06','Ngô Thị Hạnh','2007-06-01','Female','user_006@example.com','Quận Ba Đình, Hà Nội'),
  ('user_007','binh','binh123','Lê Nguyễn Thanh Bình','2008-07-19','Male','user_007@example.com','Quận Long Biên, Hà Nội'),
  ('user_008','chau','chau123','Trịnh Minh Châu','2007-12-30','Female','user_008@example.com','Huyện Thanh Trì, Hà Nội'),
  ('user_009','manh','manh123','Ngô Đức Mạnh','2008-08-09','Male','user_009@example.com','Quận Nam Từ Liêm, Hà Nội'),
  ('user_010','hieu','hieu123','Nguyễn Ngọc Hiếu','2007-11-17','Female','user_010@example.com','Quận Bắc Từ Liêm, Hà Nội'),

  -- teachers (user_011 - user_020)
  ('user_011','thanhgv','hashed_pw_11','Ngô Đức Thanh','1995-03-01','Male','user_011@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_012','ha_teacher','hashed_pw_12','Nguyễn Thanh Hà','1992-06-11','Female','user_012@example.com','Quận Đống Đa, Hà Nội'),
  ('user_013','duy_teacher','hashed_pw_13','Lê Minh Duy','1990-09-21','Male','user_013@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_014','loan_teacher','hashed_pw_14','Phan Quỳnh Loan','1994-05-15','Female','user_014@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_015','kiengv','hashed_pw_15','Trần Anh Kiên','1991-07-02','Male','user_015@example.com','Quận Ba Đình, Hà Nội'),
  ('user_016','hoa_teacher','hashed_pw_16','Đoàn Thị Hoa','1993-01-19','Female','user_016@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_017','long_teacher','hashed_pw_17','Phùng Thanh Long','1989-12-05','Male','user_017@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_018','thuong_teacher','hashed_pw_18','Đặng Hà Thương','1996-10-25','Female','user_018@example.com','Quận Long Biên, Hà Nội'),
  ('user_019','minhgv','hashed_pw_19','Lý Hoàng Minh','1995-04-17','Male','user_019@example.com','Huyện Thanh Trì, Hà Nội'),
  ('user_020','phuonggv','hashed_pw_20','Nguyễn Thảo Phương','1992-08-03','Female','user_020@example.com','Quận Nam Từ Liêm, Hà Nội'),

  -- students (user_021 - user_170)
  ('user_021','hs_021','hashed_pw_021','Trần Ngọc Anh','2010-03-19','Female','user_021@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_022','hs_022','hashed_pw_022','Phạm Việt Cường','2008-11-16','Male','user_022@example.com','Quận Hà Đông, Hà Nội'),
  ('user_023','hs_023','hashed_pw_023','Lê Thanh Duyên','2009-12-14','Female','user_023@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_024','hs_024','hashed_pw_024','Nguyễn Đức Hiếu','2008-06-05','Male','user_024@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_025','hs_025','hashed_pw_025','Vũ Thu Hoài','2009-06-06','Female','user_025@example.com','Quận Ba Đình, Hà Nội'),
  ('user_026','hs_026','hashed_pw_026','Hoàng Minh Khôi','2009-10-11','Male','user_026@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_027','hs_027','hashed_pw_027','Đỗ Thị Lan Anh','2007-09-29','Female','user_027@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_028','hs_028','hashed_pw_028','Ngô Quang Long','2009-09-25','Male','user_028@example.com','Quận Đống Đa, Hà Nội'),
  ('user_029','hs_029','hashed_pw_029','Đặng Phương Mai','2009-08-29','Female','user_029@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_030','hs_030','hashed_pw_030','Lý Hồng Nhung','2009-10-17','Female','user_030@example.com','Quận Long Biên, Hà Nội'),
  ('user_031','hs_031','hashed_pw_031','Trần Văn Phong','2010-05-08','Male','user_031@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_032','hs_032','hashed_pw_032','Phạm Duy Thái','2008-09-09','Male','user_032@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_033','hs_033','hashed_pw_033','Nguyễn Thị Thảo','2009-12-19','Female','user_033@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_034','hs_034','hashed_pw_034','Lê Văn Trường','2009-11-18','Male','user_034@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_035','hs_035','hashed_pw_035','Vũ Kim Anh','2010-01-09','Female','user_035@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_036','hs_036','hashed_pw_036','Hoàng Việt Bình','2008-05-30','Male','user_036@example.com','Quận Hà Đông, Hà Nội'),
  ('user_037','hs_037','hashed_pw_037','Đỗ Thị Kim Chi','2009-04-27','Female','user_037@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_038','hs_038','hashed_pw_038','Ngô Văn Diện','2009-11-12','Male','user_038@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_039','hs_039','hashed_pw_039','Đặng Thanh Giang','2008-04-20','Female','user_039@example.com','Quận Ba Đình, Hà Nội'),
  ('user_040','hs_040','hashed_pw_040','Lý Văn Hùng','2007-05-14','Male','user_040@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_041','hs_041','hashed_pw_041','Trần Thu Hương','2009-09-05','Female','user_041@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_042','hs_042','hashed_pw_042','Phạm Minh Khang','2010-03-01','Male','user_042@example.com','Quận Đống Đa, Hà Nội'),
  ('user_043','hs_043','hashed_pw_043','Nguyễn Thị Mai','2008-10-26','Female','user_043@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_044','hs_044','hashed_pw_044','Lê Minh Nhật','2008-09-02','Male','user_044@example.com','Quận Long Biên, Hà Nội'),
  ('user_045','hs_045','hashed_pw_045','Vũ Thị Oanh','2010-01-12','Female','user_045@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_046','hs_046','hashed_pw_046','Hoàng Hải Phong','2009-06-19','Male','user_046@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_047','hs_047','hashed_pw_047','Đỗ Thị Phương','2010-05-02','Female','user_047@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_048','hs_048','hashed_pw_048','Ngô Văn Quý','2007-12-03','Male','user_048@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_049','hs_049','hashed_pw_049','Đặng Thị Sen','2009-01-03','Female','user_049@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_050','hs_050','hashed_pw_050','Lý Văn Tùng','2008-12-02','Male','user_050@example.com','Quận Hà Đông, Hà Nội'),
  ('user_051','hs_051','hashed_pw_051','Trần Hải Yến','2010-02-06','Female','user_051@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_052','hs_052','hashed_pw_052','Phạm Văn Bảo','2008-07-10','Male','user_052@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_053','hs_053','hashed_pw_053','Nguyễn Thị Cẩm','2010-03-30','Female','user_053@example.com','Quận Ba Đình, Hà Nội'),
  ('user_054','hs_054','hashed_pw_054','Lê Văn Dũng','2010-04-14','Male','user_054@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_055','hs_055','hashed_pw_055','Vũ Thị Hoa','2007-07-21','Female','user_055@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_056','hs_056','hashed_pw_056','Hoàng Minh Huy','2007-05-18','Male','user_056@example.com','Quận Đống Đa, Hà Nội'),
  ('user_057','hs_057','hashed_pw_057','Đỗ Thị Khánh Ly','2009-04-19','Female','user_057@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_058','hs_058','hashed_pw_058','Ngô Văn Nam','2007-11-13','Male','user_058@example.com','Quận Long Biên, Hà Nội'),
  ('user_059','hs_059','hashed_pw_059','Đặng Thị Ngọc','2010-03-15','Female','user_059@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_060','hs_060','hashed_pw_060','Lý Văn Phúc','2009-10-11','Male','user_060@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_061','hs_061','hashed_pw_061','Trần Thị Quyên','2009-05-15','Female','user_061@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_062','hs_062','hashed_pw_062','Phạm Văn Sinh','2009-12-14','Male','user_062@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_063','hs_063','hashed_pw_063','Nguyễn Thị Thúy','2009-10-01','Female','user_063@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_064','hs_064','hashed_pw_064','Lê Văn Vinh','2010-02-15','Male','user_064@example.com','Quận Hà Đông, Hà Nội'),
  ('user_065','hs_065','hashed_pw_065','Vũ Thị Ánh','2010-03-26','Female','user_065@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_066','hs_066','hashed_pw_066','Hoàng Minh Cường','2009-04-21','Male','user_066@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_067','hs_067','hashed_pw_067','Đỗ Thị Diệu','2008-08-17','Female','user_067@example.com','Quận Ba Đình, Hà Nội'),
  ('user_068','hs_068','hashed_pw_068','Ngô Văn Giang','2010-04-18','Male','user_068@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_069','hs_069','hashed_pw_069','Đặng Thị Hải Yến','2007-06-18','Female','user_069@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_070','hs_070','hashed_pw_070','Lý Văn Khôi','2008-04-11','Male','user_070@example.com','Quận Đống Đa, Hà Nội'),
  ('user_071','hs_071','hashed_pw_071','Trần Thu Lan','2009-06-04','Female','user_071@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_072','hs_072','hashed_pw_072','Phạm Văn Nam','2007-08-12','Male','user_072@example.com','Quận Long Biên, Hà Nội'),
  ('user_073','hs_073','hashed_pw_073','Nguyễn Thị Oanh','2008-03-30','Female','user_073@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_074','hs_074','hashed_pw_074','Lê Văn Quang','2009-06-14','Male','user_074@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_075','hs_075','hashed_pw_075','Vũ Thị Sen','2008-01-01','Female','user_075@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_076','hs_076','hashed_pw_076','Hoàng Minh Tùng','2008-11-04','Male','user_076@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_077','hs_077','hashed_pw_077','Đỗ Thị Vui','2008-11-09','Female','user_077@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_078','hs_078','hashed_pw_078','Ngô Văn Xá','2007-08-10','Male','user_078@example.com','Quận Hà Đông, Hà Nội'),
  ('user_079','hs_079','hashed_pw_079','Đặng Thị Xuân','2008-03-22','Female','user_079@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_080','hs_080','hashed_pw_080','Lý Văn An','2007-09-14','Male','user_080@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_081','hs_081','hashed_pw_081','Trần Thị Bình','2009-09-01','Female','user_081@example.com','Quận Ba Đình, Hà Nội'),
  ('user_082','hs_082','hashed_pw_082','Phạm Văn Chính','2007-12-27','Male','user_082@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_083','hs_083','hashed_pw_083','Nguyễn Thị Dung','2008-06-14','Female','user_083@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_084','hs_084','hashed_pw_084','Lê Văn Hải','2008-03-05','Male','user_084@example.com','Quận Đống Đa, Hà Nội'),
  ('user_085','hs_085','hashed_pw_085','Vũ Thị Hồng','2009-10-18','Female','user_085@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_086','hs_086','hashed_pw_086','Hoàng Minh Khánh','2008-12-21','Male','user_086@example.com','Quận Long Biên, Hà Nội'),
  ('user_087','hs_087','hashed_pw_087','Đỗ Thị Liên','2007-06-08','Female','user_087@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_088','hs_088','hashed_pw_088','Ngô Văn Mạnh','2008-05-07','Male','user_088@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_089','hs_089','hashed_pw_089','Đặng Thị Nga','2008-05-23','Female','user_089@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_090','hs_090','hashed_pw_090','Lý Văn Phước','2010-04-24','Male','user_090@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_091','hs_091','hashed_pw_091','Trần Thị Quỳnh','2007-11-24','Female','user_091@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_092','hs_092','hashed_pw_092','Phạm Văn Sáng','2008-06-26','Male','user_092@example.com','Quận Hà Đông, Hà Nội'),
  ('user_093','hs_093','hashed_pw_093','Nguyễn Thị Thu','2010-02-26','Female','user_093@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_094','hs_094','hashed_pw_094','Lê Văn Tiến','2007-06-27','Male','user_094@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_095','hs_095','hashed_pw_095','Vũ Thị Uyên','2008-03-02','Female','user_095@example.com','Quận Ba Đình, Hà Nội'),
  ('user_096','hs_096','hashed_pw_096','Hoàng Minh Vương','2009-11-09','Male','user_096@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_097','hs_097','hashed_pw_097','Đỗ Thị Xuyến','2009-04-05','Female','user_097@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_098','hs_098','hashed_pw_098','Ngô Văn Yên','2009-05-11','Male','user_098@example.com','Quận Đống Đa, Hà Nội'),
  ('user_099','hs_099','hashed_pw_099','Đặng Thị Ánh Tuyết','2007-06-02','Female','user_099@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_100','hs_100','hashed_pw_100','Lý Văn Bắc','2007-06-04','Male','user_100@example.com','Quận Long Biên, Hà Nội'),
  ('user_101','hs_101','hashed_pw_101','Trần Thị Cúc','2009-08-28','Female','user_101@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_102','hs_102','hashed_pw_102','Phạm Văn Độ','2007-07-07','Male','user_102@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_103','hs_103','hashed_pw_103','Nguyễn Thị Giang','2009-02-17','Female','user_103@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_104','hs_104','hashed_pw_104','Lê Văn Hùng','2009-11-17','Male','user_104@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_105','hs_105','hashed_pw_105','Vũ Thị Kim','2010-04-22','Female','user_105@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_106','hs_106','hashed_pw_106','Hoàng Minh Lợi','2009-11-07','Male','user_106@example.com','Quận Hà Đông, Hà Nội'),
  ('user_107','hs_107','hashed_pw_107','Đỗ Thị Mai Hương','2010-03-19','Female','user_107@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_108','hs_108','hashed_pw_108','Ngô Văn Nhã','2007-11-09','Male','user_108@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_109','hs_109','hashed_pw_109','Đặng Thị Phương Anh','2009-02-22','Female','user_109@example.com','Quận Ba Đình, Hà Nội'),
  ('user_110','hs_110','hashed_pw_110','Lý Văn Quý','2008-02-20','Male','user_110@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_111','hs_111','hashed_pw_111','Trần Thị Sen','2010-02-21','Female','user_111@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_112','hs_112','hashed_pw_112','Phạm Văn Thịnh','2010-01-09','Male','user_112@example.com','Quận Đống Đa, Hà Nội'),
  ('user_113','hs_113','hashed_pw_113','Nguyễn Thị Thủy','2008-05-13','Female','user_113@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_114','hs_114','hashed_pw_114','Lê Văn Toàn','2009-08-22','Male','user_114@example.com','Quận Long Biên, Hà Nội'),
  ('user_115','hs_115','hashed_pw_115','Vũ Thị Trà My','2008-12-23','Female','user_115@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_116','hs_116','hashed_pw_116','Hoàng Minh Việt','2007-10-09','Male','user_116@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_117','hs_117','hashed_pw_117','Đỗ Thị Yến Nhi','2010-04-29','Female','user_117@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_118','hs_118','hashed_pw_118','Ngô Văn An','2007-06-22','Male','user_118@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_119','hs_119','hashed_pw_119','Đặng Thị Bích','2009-04-03','Female','user_119@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_120','hs_120','hashed_pw_120','Lý Văn Công','2009-04-29','Male','user_120@example.com','Quận Hà Đông, Hà Nội'),
  ('user_121','hs_121','hashed_pw_121','Trần Thị Diễm','2009-10-20','Female','user_121@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_122','hs_122','hashed_pw_122','Phạm Văn Đức','2009-12-07','Male','user_122@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_123','hs_123','hashed_pw_123','Nguyễn Thị Hà','2008-03-13','Female','user_123@example.com','Quận Ba Đình, Hà Nội'),
  ('user_124','hs_124','hashed_pw_124','Lê Văn Hậu','2010-04-11','Male','user_124@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_125','hs_125','hashed_pw_125','Vũ Thị Khánh Linh','2007-06-28','Female','user_125@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_126','hs_126','hashed_pw_126','Hoàng Minh Long','2009-08-15','Male','user_126@example.com','Quận Đống Đa, Hà Nội'),
  ('user_127','hs_127','hashed_pw_127','Đỗ Thị Nguyệt','2007-08-12','Female','user_127@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_128','hs_128','hashed_pw_128','Ngô Văn Phi','2009-10-09','Male','user_128@example.com','Quận Long Biên, Hà Nội'),
  ('user_129','hs_129','hashed_pw_129','Đặng Thị Quyên','2009-09-14','Female','user_129@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_130','hs_130','hashed_pw_130','Lý Văn Sơn','2010-04-18','Male','user_130@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_131','hs_131','hashed_pw_131','Trần Thị Thơm','2010-02-02','Female','user_131@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_132','hs_132','hashed_pw_132','Phạm Văn Trọng','2009-03-06','Male','user_132@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_133','hs_133','hashed_pw_133','Nguyễn Thị Uyên','2008-08-13','Female','user_133@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_134','hs_134','hashed_pw_134','Lê Văn Việt','2010-02-11','Male','user_134@example.com','Quận Hà Đông, Hà Nội'),
  ('user_135','hs_135','hashed_pw_135','Vũ Thị Xinh','2009-09-28','Female','user_135@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_136','hs_136','hashed_pw_136','Hoàng Minh An','2010-04-30','Male','user_136@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_137','hs_137','hashed_pw_137','Đỗ Thị Bích Thủy','2009-05-22','Female','user_137@example.com','Quận Ba Đình, Hà Nội'),
  ('user_138','hs_138','hashed_pw_138','Ngô Văn Đại','2007-12-08','Male','user_138@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_139','hs_139','hashed_pw_139','Đặng Thị Giang Hương','2007-10-22','Female','user_139@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_140','hs_140','hashed_pw_140','Lý Văn Kha','2008-12-07','Male','user_140@example.com','Quận Đống Đa, Hà Nội'),
  ('user_141','hs_141','hashed_pw_141','Trần Thu Lan Hương','2009-02-18','Female','user_141@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_142','hs_142','hashed_pw_142','Phạm Văn Nhật Long','2008-02-16','Male','user_142@example.com','Quận Long Biên, Hà Nội'),
  ('user_143','hs_143','hashed_pw_143','Nguyễn Thị Mai Chi','2009-01-26','Female','user_143@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_144','hs_144','hashed_pw_144','Lê Văn Nam','2010-01-10','Male','user_144@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_145','hs_145','hashed_pw_145','Vũ Thị Oanh Kiều','2008-04-22','Female','user_145@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_146','hs_146','hashed_pw_146','Hoàng Minh Phúc','2010-05-09','Male','user_146@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_147','hs_147','hashed_pw_147','Đỗ Thị Quỳnh Nga','2009-04-30','Female','user_147@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_148','hs_148','hashed_pw_148','Ngô Văn Sơn Tùng','2008-01-30','Male','user_148@example.com','Quận Hà Đông, Hà Nội'),
  ('user_149','hs_149','hashed_pw_149','Đặng Thị Thu Trang','2007-06-18','Female','user_149@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_150','hs_150','hashed_pw_150','Lý Văn Việt Anh','2008-11-08','Male','user_150@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_151','hs_151','hashed_pw_151','Trần Thị Yến Linh','2007-05-15','Female','user_151@example.com','Quận Ba Đình, Hà Nội'),
  ('user_152','hs_152','hashed_pw_152','Phạm Văn Anh Tuấn','2009-03-14','Male','user_152@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_153','hs_153','hashed_pw_153','Nguyễn Thị Bích Ngọc','2009-08-23','Female','user_153@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_154','hs_154','hashed_pw_154','Lê Văn Chấn Hưng','2008-09-21','Male','user_154@example.com','Quận Đống Đa, Hà Nội'),
  ('user_155','hs_155','hashed_pw_155','Vũ Thị Diệu Hoa','2008-04-15','Female','user_155@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_156','hs_156','hashed_pw_156','Hoàng Minh Đức Tài','2009-04-19','Male','user_156@example.com','Quận Long Biên, Hà Nội'),
  ('user_157','hs_157','hashed_pw_157','Đỗ Thị Hà Phương','2008-08-29','Female','user_157@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_158','hs_158','hashed_pw_158','Ngô Văn Hoàng Khải','2008-09-12','Male','user_158@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_159','hs_159','hashed_pw_159','Đặng Thị Kim Chi','2009-12-18','Female','user_159@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_160','hs_160','hashed_pw_160','Lý Văn Minh Đức','2007-06-16','Male','user_160@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_161','hs_161','hashed_pw_161','Trần Thị Ngân Hà','2008-03-31','Female','user_161@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_162','hs_162','hashed_pw_162','Phạm Văn Quốc Anh','2010-01-15','Male','user_162@example.com','Quận Hà Đông, Hà Nội'),
  ('user_163','hs_163','hashed_pw_163','Nguyễn Thị Thu Hằng','2008-09-04','Female','user_163@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_164','hs_164','hashed_pw_164','Lê Văn Trung Kiên','2009-05-09','Male','user_164@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_165','hs_165','hashed_pw_165','Vũ Thị Vân Anh','2009-12-21','Female','user_165@example.com','Quận Ba Đình, Hà Nội'),
  ('user_166','hs_166','hashed_pw_166','Hoàng Minh Xuân Trường','2007-06-15','Male','user_166@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_167','hs_167','hashed_pw_167','Đỗ Thị Yến Trang','2008-05-03','Female','user_167@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_168','hs_168','hashed_pw_168','Ngô Văn Bá','2007-08-30','Male','user_168@example.com','Quận Đống Đa, Hà Nội'),
  ('user_169','hs_169','hashed_pw_169','Đặng Thị Cẩm Ly','2008-07-04','Female','user_169@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_170','hs_170','hashed_pw_170','Lý Văn Đạt','2009-10-21','Male','user_170@example.com','Quận Long Biên, Hà Nội'),

  -- teachers (user_171 - user_240)
  ('user_171','gv_171','hashed_pw_171','Trần Thị Hải Anh','1995-11-22','Female','user_171@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_172','gv_172','hashed_pw_172','Nguyễn Văn Bảo','1989-06-26','Male','user_172@example.com','Quận Đống Đa, Hà Nội'),
  ('user_173','gv_173','hashed_pw_173','Lê Thị Cẩm','1996-12-03','Female','user_173@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_174','gv_174','hashed_pw_174','Phạm Văn Dũng','1999-02-01','Male','user_174@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_175','gv_175','hashed_pw_175','Ngô Thị Hoa','1994-04-11','Female','user_175@example.com','Quận Ba Đình, Hà Nội'),
  ('user_176','gv_176','hashed_pw_176','Đỗ Minh Huy','1981-12-31','Male','user_176@example.com','Quận Long Biên, Hà Nội'),
  ('user_177','gv_177','hashed_pw_177','Đặng Thị Khánh Ly','1999-12-19','Female','user_177@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_178','gv_178','hashed_pw_178','Lý Văn Nam','1990-01-14','Male','user_178@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_179','gv_179','hashed_pw_179','Trịnh Thị Ngọc','1986-07-27','Female','user_179@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_180','gv_180','hashed_pw_180','Vũ Văn Phúc','1985-06-08','Male','user_180@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_181','gv_181','hashed_pw_181','Nguyễn Thị Quyên','1980-11-05','Female','user_181@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_182','gv_182','hashed_pw_182','Trần Văn Sinh','1986-09-22','Male','user_182@example.com','Quận Hà Đông, Hà Nội'),
  ('user_183','gv_183','hashed_pw_183','Phạm Thị Thúy','1992-04-12','Female','user_183@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_184','gv_184','hashed_pw_184','Lê Văn Vinh','1993-03-27','Male','user_184@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_185','gv_185','hashed_pw_185','Ngô Thị Ánh','1988-12-17','Female','user_185@example.com','Quận Ba Đình, Hà Nội'),
  ('user_186','gv_186','hashed_pw_186','Đỗ Minh Cường','1996-08-27','Male','user_186@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_187','gv_187','hashed_pw_187','Đặng Thị Diệu','1986-04-18','Female','user_187@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_188','gv_188','hashed_pw_188','Lý Văn Giang','1992-05-01','Male','user_188@example.com','Quận Đống Đa, Hà Nội'),
  ('user_189','gv_189','hashed_pw_189','Trịnh Thị Hải Yến','1985-09-30','Female','user_189@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_190','gv_190','hashed_pw_190','Vũ Văn Khôi','1985-09-03','Male','user_190@example.com','Quận Long Biên, Hà Nội'),
  ('user_191','gv_191','hashed_pw_191','Nguyễn Thị Thu Lan','1999-03-11','Female','user_191@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_192','gv_192','hashed_pw_192','Trần Văn Nam','1989-07-25','Male','user_192@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_193','gv_193','hashed_pw_193','Phạm Thị Oanh','1986-11-02','Female','user_193@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_194','gv_194','hashed_pw_194','Lê Văn Quang','1982-09-07','Male','user_194@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_195','gv_195','hashed_pw_195','Ngô Thị Sen','1991-08-10','Female','user_195@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_196','gv_196','hashed_pw_196','Đỗ Minh Tùng','1985-11-27','Male','user_196@example.com','Quận Hà Đông, Hà Nội'),
  ('user_197','gv_197','hashed_pw_197','Đặng Thị Vui','1982-03-16','Female','user_197@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_198','gv_198','hashed_pw_198','Lý Văn Xá','1993-11-24','Male','user_198@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_199','gv_199','hashed_pw_199','Trịnh Thị Xuân','2000-04-28','Female','user_199@example.com','Quận Ba Đình, Hà Nội'),
  ('user_200','gv_200','hashed_pw_200','Vũ Văn An','1981-08-30','Male','user_200@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_201','gv_201','hashed_pw_201','Nguyễn Thị Bình','1994-04-15','Female','user_201@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_202','gv_202','hashed_pw_202','Trần Văn Chính','1997-06-28','Male','user_202@example.com','Quận Đống Đa, Hà Nội'),
  ('user_203','gv_203','hashed_pw_203','Phạm Thị Dung','2000-01-26','Female','user_203@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_204','gv_204','hashed_pw_204','Lê Văn Hải','1982-05-12','Male','user_204@example.com','Quận Long Biên, Hà Nội'),
  ('user_205','gv_205','hashed_pw_205','Ngô Thị Hồng','1982-06-16','Female','user_205@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_206','gv_206','hashed_pw_206','Đỗ Minh Khánh','1996-06-26','Male','user_206@example.com','Huyện Đông Anh, Hà Nội'),
  ('user_207','gv_207','hashed_pw_207','Đặng Thị Liên','1991-08-02','Female','user_207@example.com','Huyện Gia Lâm, Hà Nội'),
  ('user_208','gv_208','hashed_pw_208','Lý Văn Mạnh','1985-03-10','Male','user_208@example.com','Thị xã Sơn Tây, Hà Nội'),
  ('user_209','gv_209','hashed_pw_209','Trịnh Thị Nga','1981-11-20','Female','user_209@example.com','Quận Hoàn Kiếm, Hà Nội'),
  ('user_210','gv_210','hashed_pw_210','Vũ Văn Phước','1985-09-11','Male','user_210@example.com','Quận Hà Đông, Hà Nội'),
  ('user_211','gv_211','hashed_pw_211','Nguyễn Thị Quỳnh','1988-11-09','Female','user_211@example.com','Quận Cầu Giấy, Hà Nội'),
  ('user_212','gv_212','hashed_pw_212','Trần Văn Sáng','1980-07-03','Male','user_212@example.com','Quận Tây Hồ, Hà Nội'),
  ('user_213','gv_213','hashed_pw_213','Phạm Thị Thu','1982-02-11','Female','user_213@example.com','Quận Ba Đình, Hà Nội'),
  ('user_214','gv_214','hashed_pw_214','Lê Văn Tiến','1984-04-02','Male','user_214@example.com','Quận Thanh Xuân, Hà Nội'),
  ('user_215','gv_215','hashed_pw_215','Ngô Thị Uyên','1990-07-17','Female','user_215@example.com','Quận Hoàng Mai, Hà Nội'),
  ('user_216','gv_216','hashed_pw_216','Đỗ Minh Vương','1986-10-15','Male','user_216@example.com','Quận Đống Đa, Hà Nội'),
  ('user_217','gv_217','hashed_pw_217','Đặng Thị Xuyến','1987-10-23','Female','user_217@example.com','Quận Hai Bà Trưng, Hà Nội'),
  ('user_218','gv_218','hashed_pw_218','Lý Văn Yên','2000-05-09','Male','user_218@example.com','Quận Long Biên, Hà Nội'),
  ('user_219','gv_219','hashed_pw_219','Trịnh Thị Ánh Tuyết','1997-09-11','Female','user_219@example.com','Quận Bắc Từ Liêm, Hà Nội'),
  ('user_220','gv_220','hashed_pw_220','Vũ Văn Bắc','1992-02-15','Male','user_220@example.com','Huyện Đông Anh, Hà Nội');
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
    ('user_010','Cần củng cố kiến thức Văn.','Làm thơ, đi phượt'),
    ('user_021','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_022','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_023','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','chơi thể thao, đi bộ'),
    ('user_024','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','thử nghiệm hóa học, sáng tác'),
    ('user_025','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','đọc sách, vẽ tranh'),
    ('user_026','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','thử nghiệm hóa học, sáng tác'),
    ('user_027','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','thử nghiệm hóa học, sáng tác'),
    ('user_028','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','thử nghiệm hóa học, sáng tác'),
    ('user_029','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_030','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','xem phim, viết truyện'),
    ('user_031','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','xem phim, viết truyện'),
    ('user_032','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','đọc sách, vẽ tranh'),
    ('user_033','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_034','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','chơi thể thao, đi bộ'),
    ('user_035','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','trồng cây, vẽ kỹ thuật số'),
    ('user_036','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','chơi thể thao, đi bộ'),
    ('user_037','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_038','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','thử nghiệm hóa học, sáng tác'),
    ('user_039','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','xem phim, viết truyện'),
    ('user_040','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','đọc sách, vẽ tranh'),
    ('user_041','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','đọc sách, vẽ tranh'),
    ('user_042','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','nghe nhạc, chơi game'),
    ('user_043','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','chơi thể thao, đi bộ'),
    ('user_044','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','thử nghiệm hóa học, sáng tác'),
    ('user_045','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_046','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','đọc sách, vẽ tranh'),
    ('user_047','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','chơi thể thao, đi bộ'),
    ('user_048','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','đọc sách, vẽ tranh'),
    ('user_049','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','chơi thể thao, đi bộ'),
    ('user_050','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_051','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','thử nghiệm hóa học, sáng tác'),
    ('user_052','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','thử nghiệm hóa học, sáng tác'),
    ('user_053','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','thử nghiệm hóa học, sáng tác'),
    ('user_054','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','chơi thể thao, đi bộ'),
    ('user_055','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','trồng cây, vẽ kỹ thuật số'),
    ('user_056','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_057','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','thử nghiệm hóa học, sáng tác'),
    ('user_058','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_059','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','nghe nhạc, chơi game'),
    ('user_060','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_061','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','đọc sách, vẽ tranh'),
    ('user_062','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','nghe nhạc, chơi game'),
    ('user_063','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','thử nghiệm hóa học, sáng tác'),
    ('user_064','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_065','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','xem phim, viết truyện'),
    ('user_066','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','thử nghiệm hóa học, sáng tác'),
    ('user_067','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','thử nghiệm hóa học, sáng tác'),
    ('user_068','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','thử nghiệm hóa học, sáng tác'),
    ('user_069','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','thử nghiệm hóa học, sáng tác'),
    ('user_070','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','chơi thể thao, đi bộ'),
    ('user_071','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','xem phim, viết truyện'),
    ('user_072','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','nghe nhạc, chơi game'),
    ('user_073','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','chơi thể thao, đi bộ'),
    ('user_074','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','trồng cây, vẽ kỹ thuật số'),
    ('user_075','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','trồng cây, vẽ kỹ thuật số'),
    ('user_076','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','đọc sách, vẽ tranh'),
    ('user_077','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','nghe nhạc, chơi game'),
    ('user_078','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','thử nghiệm hóa học, sáng tác'),
    ('user_079','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','đọc sách, vẽ tranh'),
    ('user_080','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','xem phim, viết truyện'),
    ('user_081','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_082','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_083','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_084','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','trồng cây, vẽ kỹ thuật số'),
    ('user_085','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','nghe nhạc, chơi game'),
    ('user_086','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','đọc sách, vẽ tranh'),
    ('user_087','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','đọc sách, vẽ tranh'),
    ('user_088','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','xem phim, viết truyện'),
    ('user_089','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','xem phim, viết truyện'),
    ('user_090','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','trồng cây, vẽ kỹ thuật số'),
    ('user_091','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','thử nghiệm hóa học, sáng tác'),
    ('user_092','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','xem phim, viết truyện'),
    ('user_093','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','trồng cây, vẽ kỹ thuật số'),
    ('user_094','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','đọc sách, vẽ tranh'),
    ('user_095','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','trồng cây, vẽ kỹ thuật số'),
    ('user_096','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','chơi thể thao, đi bộ'),
    ('user_097','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','nghe nhạc, chơi game'),
    ('user_098','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','xem phim, viết truyện'),
    ('user_099','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','chơi thể thao, đi bộ'),
    ('user_100','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','xem phim, viết truyện'),
    ('user_101','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','đọc sách, vẽ tranh'),
    ('user_102','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','chơi thể thao, đi bộ'),
    ('user_103','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','chơi thể thao, đi bộ'),
    ('user_104','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','thử nghiệm hóa học, sáng tác'),
    ('user_105','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','chơi thể thao, đi bộ'),
    ('user_106','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','thử nghiệm hóa học, sáng tác'),
    ('user_107','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','đọc sách, vẽ tranh'),
    ('user_108','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_109','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','đọc sách, vẽ tranh'),
    ('user_110','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','đọc sách, vẽ tranh'),
    ('user_111','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','đọc sách, vẽ tranh'),
    ('user_112','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','xem phim, viết truyện'),
    ('user_113','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','đọc sách, vẽ tranh'),
    ('user_114','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','chơi thể thao, đi bộ'),
    ('user_115','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','thử nghiệm hóa học, sáng tác'),
    ('user_116','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','trồng cây, vẽ kỹ thuật số'),
    ('user_117','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','chơi thể thao, đi bộ'),
    ('user_118','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','thử nghiệm hóa học, sáng tác'),
    ('user_119','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','trồng cây, vẽ kỹ thuật số'),
    ('user_120','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','thử nghiệm hóa học, sáng tác'),
    ('user_121','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','thử nghiệm hóa học, sáng tác'),
    ('user_122','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','đọc sách, vẽ tranh'),
    ('user_123','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','xem phim, viết truyện'),
    ('user_124','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','thử nghiệm hóa học, sáng tác'),
    ('user_125','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_126','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','xem phim, viết truyện'),
    ('user_127','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','trồng cây, vẽ kỹ thuật số'),
    ('user_128','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','chơi thể thao, đi bộ'),
    ('user_129','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','xem phim, viết truyện'),
    ('user_130','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','xem phim, viết truyện'),
    ('user_131','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','thử nghiệm hóa học, sáng tác'),
    ('user_132','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_133','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','thử nghiệm hóa học, sáng tác'),
    ('user_134','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','đọc sách, vẽ tranh'),
    ('user_135','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_136','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','xem phim, viết truyện'),
    ('user_137','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','xem phim, viết truyện'),
    ('user_138','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','thử nghiệm hóa học, sáng tác'),
    ('user_139','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_140','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','xem phim, viết truyện'),
    ('user_141','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','xem phim, viết truyện'),
    ('user_142','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','chơi thể thao, đi bộ'),
    ('user_143','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','đọc sách, vẽ tranh'),
    ('user_144','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','chơi thể thao, đi bộ'),
    ('user_145','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','đọc sách, vẽ tranh'),
    ('user_146','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','nghe nhạc, chơi game'),
    ('user_147','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','đọc sách, vẽ tranh'),
    ('user_148','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','nghe nhạc, chơi game'),
    ('user_149','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','trồng cây, vẽ kỹ thuật số'),
    ('user_150','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','trồng cây, vẽ kỹ thuật số'),
    ('user_151','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','chơi thể thao, đi bộ'),
    ('user_152','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_153','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','nghe nhạc, chơi game'),
    ('user_154','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','đọc sách, vẽ tranh'),
    ('user_155','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','thử nghiệm hóa học, sáng tác'),
    ('user_156','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','trồng cây, vẽ kỹ thuật số'),
    ('user_157','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','trồng cây, vẽ kỹ thuật số'),
    ('user_158','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','trồng cây, vẽ kỹ thuật số'),
    ('user_159','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','trồng cây, vẽ kỹ thuật số'),
    ('user_160','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','nghe nhạc, chơi game'),
    ('user_161','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','chơi thể thao, đi bộ'),
    ('user_162','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','đọc sách, vẽ tranh'),
    ('user_163','Học lực em trung bình, cần người hướng dẫn rõ ràng để nắm bài tốt hơn.','chơi thể thao, đi bộ'),
    ('user_164','Em muốn cải thiện môn học đang yếu để tự tin hơn trong kỳ thi sắp tới.','thử nghiệm hóa học, sáng tác'),
    ('user_165','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','xem phim, viết truyện'),
    ('user_166','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','thử nghiệm hóa học, sáng tác'),
    ('user_167','Em đã từng học thêm nhưng chưa hiệu quả, mong tìm người phù hợp để tiến bộ.','thử nghiệm hóa học, sáng tác'),
    ('user_168','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','chơi thể thao, đi bộ'),
    ('user_169','Em là học sinh nghiêm túc, đang tìm người đồng hành giúp củng cố kiến thức.','nghe nhạc, chơi game'),
    ('user_170','Thầy cô có thể giúp em xây lại nền tảng kiến thức thì tuyệt vời ạ.','thử nghiệm hóa học, sáng tác')
    ;

-- 2.3 Teachers
INSERT INTO teachers (teacher_id, introduction, degree, experience, teaching_style, hobby)
VALUES
  ('user_011','GV Toán nhiều năm kinh nghiệm, chuyên luyện thi đại học.','Thạc sĩ Toán học','5 năm dạy kèm THPT',
    'Phong cách dạy chậm rãi, chắc chắn, giải thích từng bước bằng ví dụ cụ thể, giúp học sinh nắm vững nền tảng và phát triển tư duy logic. Luôn tạo môi trường thoải mái để học sinh không sợ sai.','Chạy bộ đường trường, giải các bài toán khó'),
  ('user_012','Chuyên gia **Văn học**, giàu kinh nghiệm luyện thi đại học, khơi gợi niềm đam mê và tư duy phản biện cho học sinh.','Cử nhân SP Văn','7 năm luyện thi',
    'Ưu tiên phân tích tác phẩm theo chiều sâu, hướng học sinh tư duy phản biện và cảm thụ văn học qua trải nghiệm cá nhân. Luôn đưa ví dụ gần gũi để học sinh dễ liên hệ và tự tin viết.','Du lịch khám phá văn hóa, đọc sách và viết nhật ký'),
  ('user_013','Giáo viên **Hóa học** đầy nhiệt huyết, là học viên cao học với kiến thức chuyên sâu và khả năng truyền đạt dễ hiểu.','Thạc sĩ Hóa học','4 năm dạy thêm',
    'Hướng dẫn qua sơ đồ tư duy và video minh họa, giúp bài giảng cô đọng, dễ hiểu. Luôn kết hợp lý thuyết với bài tập thực tế, tập trung giải thích bản chất phản ứng hoá học.','Nấu ăn các món phức tạp, nghiên cứu các phản ứng hóa học trong đời sống'),
  ('user_014','Giáo viên **tiếng Anh** năng động, từng sống và làm việc ở Anh Quốc, mang đến môi trường học tập chuẩn quốc tế.','Thạc sĩ Ngôn ngữ','6 năm giảng dạy',
    'Tập trung vào giao tiếp thực tế, luyện phản xạ bằng cách đặt tình huống giao tiếp. Kết hợp nhiều công cụ học như podcast, phim ảnh, giúp học sinh được sửa lỗi cá nhân rất kỹ và tự tin nói.','Xem phim nước ngoài không phụ đề, tìm hiểu văn hóa phương Tây'),
  ('user_015','Chuyên ôn thi **Toán học** các khối lớp 9-12, với kinh nghiệm lâu năm và bộ đề luyện thi đa dạng.','Cử nhân Toán','8 năm kinh nghiệm',
    'Dạy theo chuyên đề, bám sát chương trình sách giáo khoa và các dạng đề thi. Có bộ đề riêng theo từng cấp độ. Luôn giúp học sinh nắm phương pháp giải chứ không học vẹt.','Cafe sách, giải các bài toán logic'),
  ('user_016','Giáo viên **Sinh học** yêu nghề, luôn tìm cách truyền cảm hứng để học sinh khám phá vẻ đẹp của thế giới tự nhiên.','Thạc sĩ Sinh học','5 năm đứng lớp',
    'Luôn tạo liên kết giữa bài học và đời sống thực tế. Đặt câu hỏi mở để học sinh suy nghĩ chủ động. Tổ chức mini game, sơ đồ tư duy để nhớ lâu và vận dụng kiến thức.','Leo núi, tìm hiểu về các loài động thực vật quý hiếm'),
  ('user_017','Giáo viên **Vật lý** sáng tạo, sử dụng các ví dụ sinh động và thí nghiệm mô phỏng để bài học trở nên trực quan, dễ hiểu.','Cử nhân SP Lý','6 năm',
    'Phân tích hiện tượng vật lý qua thí nghiệm mô phỏng. Giải thích các khái niệm bằng hoạt hình hoặc ví dụ gần gũi. Giúp học sinh hình dung được bài học chứ không học thuộc.','Làm mô hình các thiết bị vật lý, sửa chữa đồ điện tử'),
  ('user_018','Mang đến những buổi học **Hóa học** vui vẻ, dễ hiểu, giúp học sinh không còn e ngại môn học này.','Cử nhân SP Hóa','5 năm',
    'Tạo hứng thú bằng cách giải thích hóa học qua trò chơi, hoạt hình. Nhấn mạnh các mẹo ghi nhớ nhanh và cách giải các bài tập khó. Mỗi buổi học đều có mini quiz để ôn tập hiệu quả.','DIY hóa học, sưu tầm các mẫu khoáng vật'),
  ('user_019','Giáo viên **Toán học** có kinh nghiệm 9 năm luyện thi, giúp học sinh xây dựng nền tảng vững chắc và phát triển tư duy giải toán từ cơ bản đến nâng cao.','Thạc sĩ Toán học','9 năm luyện thi',
    'Chú trọng việc làm chắc phần lý thuyết nền tảng. Sử dụng sơ đồ cây và các bộ đề phân loại theo từng dạng bài. Theo sát tiến độ từng học sinh để điều chỉnh chiến lược ôn tập phù hợp.','Đọc sách triết học, chơi cờ tướng'),
  ('user_020','Giáo viên **Văn học** chuyên luyện thi sáng tác và rèn luyện tư duy phản biện, giúp học sinh viết văn mạch lạc và có chiều sâu.','Cử nhân Văn học','6 năm',
    'Hướng dẫn học sinh viết theo khung ý rõ ràng, giúp nâng cao vốn từ. Tập trung luyện viết theo chủ đề xã hội và sáng tạo. Có phản biện nhóm để tăng kỹ năng lập luận và tư duy đa chiều.','Văn thơ, tham gia các câu lạc bộ đọc sách'),
  ('user_171','Tôi là giáo viên **Văn học** tâm huyết, luôn tìm cách đổi mới phương pháp dạy để khơi gợi cảm xúc và tư duy văn chương trong học sinh.','Tiến sĩ Ngữ văn','7 năm giảng dạy',
    'Tạo không khí học tích cực, khích lệ học sinh chia sẻ cảm nhận cá nhân. Giảng bài bằng cách phân tích sâu các tác phẩm, khuyến khích tư duy phản biện và sáng tạo.','Chụp ảnh phong cảnh, đi phượt khám phá văn hóa địa phương'),
  ('user_172','Với nhiều năm kinh nghiệm giảng dạy **Sinh học**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng việc liên hệ kiến thức với đời sống và các thí nghiệm trực quan.','Tiến sĩ Sinh học','14 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ minh họa sinh động. Khuyến khích học sinh đặt câu hỏi và tự tìm tòi.','Nấu ăn các món Healthy, đi bộ đường dài để quan sát thiên nhiên'),
  ('user_173','Là một thầy giáo **Toán** tận tâm, tôi luôn chia nhỏ bài học theo từng dạng, luyện bài theo mức độ từ cơ bản đến nâng cao, giúp học sinh nắm vững kiến thức.','Thạc sĩ Toán học','4 năm giảng dạy',
    'Phương pháp giảng dạy trực quan, đi sâu vào bản chất vấn đề. Tập trung vào việc xây dựng tư duy logic, không chỉ dừng lại ở việc giải bài tập.','Thiết kế bài giảng sáng tạo, vẽ tay các sơ đồ tư duy phức tạp'),
  ('user_174','Tôi là giáo viên **Tiếng Anh** tâm huyết, luôn tìm cách đổi mới phương pháp dạy để học sinh yêu thích ngôn ngữ và tự tin giao tiếp.','Tiến sĩ Ngôn ngữ Anh','5 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ từ cuộc sống thực. Tập trung luyện phát âm chuẩn và ngữ điệu tự nhiên.','Chụp ảnh đường phố, đi phượt khám phá các nền văn hóa'),
  ('user_175','Với 15 năm kinh nghiệm giảng dạy **Vật Lý**, tôi tin rằng mọi khái niệm phức tạp đều có thể được đơn giản hóa thông qua sơ đồ tư duy và hình ảnh minh họa.','Thạc sĩ Vật Lý','15 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan để học sinh dễ hình dung. Khuyến khích tư duy logic và giải quyết vấn đề qua các bài tập thực tế.','Đọc sách chuyên ngành khoa học, nghe nhạc nhẹ cổ điển'),
  ('user_176','Là một giáo viên **Hóa học**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng việc kết hợp lý thuyết và bài tập thực hành, đưa hóa học gần hơn với đời sống.','Thạc sĩ Hóa học','9 năm giảng dạy',
    'Tạo không khí học tích cực, khích lệ học sinh làm thí nghiệm ảo và đặt câu hỏi. Giúp học sinh hiểu sâu bản chất phản ứng, không chỉ học thuộc lòng.','Thiết kế bài giảng tương tác, vẽ tay các công thức hóa học'),
  ('user_177','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Văn học** nếu được truyền cảm hứng đúng cách, khơi gợi niềm đam mê đọc và viết.','Thạc sĩ Ngữ văn','15 năm giảng dạy',
    'Tạo không khí học tích cực, khích lệ và không áp lực. Tập trung phát triển khả năng phân tích, cảm thụ và diễn đạt cá nhân của học sinh.','Chụp ảnh phong cảnh, đi phượt khám phá văn hóa dân gian'),
  ('user_178','Tôi là giáo viên **Sinh học** tận tâm, luôn tìm cách đổi mới phương pháp dạy để biến những kiến thức khô khan thành những khám phá thú vị về thế giới tự nhiên.','Tiến sĩ Sinh học','15 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ thực tế, kết nối bài học với môi trường sống.','Nấu ăn các món ăn truyền thống, đi bộ đường dài để tìm hiểu hệ sinh thái'),
  ('user_179','Dạy học **Toán** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em vượt qua nỗi sợ và chinh phục những con số.','Tiến sĩ Toán học','8 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan để học sinh dễ ghi nhớ. Tập trung vào việc rèn luyện tư duy giải quyết vấn đề và khả năng tự học.','Trồng cây cảnh trong vườn, nghiên cứu giáo án mới'),
  ('user_180','Với nhiều năm giảng dạy **Tiếng Anh**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng cách xây dựng nền tảng vững chắc về ngữ pháp và từ vựng, đồng thời khuyến khích thực hành giao tiếp.','Thạc sĩ Ngôn ngữ Anh','13 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan. Lồng ghép các trò chơi ngôn ngữ và hoạt động nhóm để tăng cường tương tác.','Đọc sách chuyên ngành ngôn ngữ, nghe nhạc nhẹ quốc tế'),
  ('user_181','Tôi thích kết hợp công nghệ vào giảng dạy **Vật lý** để bài học sinh động, dễ hiểu và hấp dẫn hơn với các thí nghiệm mô phỏng và video khoa học.','Tiến sĩ Vật Lý','7 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Giúp học sinh phân tích hiện tượng vật lý một cách logic và sâu sắc.','Thiết kế bài giảng điện tử, vẽ tay các mô hình vật lý'),
  ('user_182','Với nhiều năm giảng dạy **Hóa học**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng việc đơn giản hóa các khái niệm phức tạp và cung cấp nhiều bài tập luyện tập đa dạng.','Tiến sĩ Hóa học','7 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Tập trung vào việc giải thích bản chất các phản ứng, không chỉ là công thức.','Thiết kế bài giảng tương tác, vẽ tay các cấu trúc phân tử'),
  ('user_183','Dạy học **Văn học** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em tìm thấy vẻ đẹp trong từng câu chữ và diễn đạt cảm xúc của mình.','Tiến sĩ Ngữ văn','13 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan để học sinh dễ ghi nhớ tác phẩm. Khuyến khích đọc sách, viết nhật ký văn học.','Đọc sách chuyên ngành, nghe nhạc nhẹ thư giãn'),
  ('user_184','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Sinh học** nếu được truyền cảm hứng đúng cách, giúp các em khám phá thế giới sinh vật đầy kỳ diệu.','Tiến sĩ Sinh học','11 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan để học sinh dễ hình dung các quá trình sinh học. Liên hệ với thực tế y học, nông nghiệp.','Chụp ảnh thiên nhiên, đi phượt khám phá các hệ sinh thái'),
  ('user_185','Với nhiều năm giảng dạy **Toán học**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng việc xây dựng nền tảng vững chắc và rèn luyện kỹ năng giải quyết vấn đề.','Cử nhân Toán học','7 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan. Tập trung vào việc luyện giải đề thi và các dạng bài khó.','Thiết kế bài giảng logic, vẽ tay các đồ thị hàm số'),
  ('user_186','Tôi là giáo viên **Tiếng Anh** tâm huyết, luôn tìm cách đổi mới phương pháp dạy để tạo môi trường học tập hứng thú và hiệu quả cho học sinh.','Tiến sĩ Ngôn ngữ Anh','15 năm giảng dạy',
    'Tạo không khí học tích cực, khích lệ và không áp lực. Tập trung vào kỹ năng nghe nói, luyện phản xạ giao tiếp trong các tình huống thực tế.','Thiết kế bài giảng sáng tạo, vẽ tay các biểu đồ từ vựng'),
  ('user_187','Với nhiều năm giảng dạy **Vật lý**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng cách chia nhỏ bài học theo từng dạng, luyện bài theo mức độ từ dễ đến khó.','Tiến sĩ Vật Lý','13 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ để học sinh không bị choáng ngợp. Giải thích sâu các định luật vật lý.','Trồng cây cảnh, nghiên cứu các công trình khoa học mới'),
  ('user_188','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Hóa học** nếu được truyền cảm hứng đúng cách, giúp các em yêu thích môn học và giải quyết các bài tập phức tạp.','Thạc sĩ Hóa học','14 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Tập trung vào các phản ứng quan trọng và tính toán stoichiometry.','Thiết kế bài giảng trực quan, vẽ tay các phân tử hóa học'),
  ('user_189','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Văn học** nếu được truyền cảm hứng đúng cách, giúp các em cảm thụ sâu sắc vẻ đẹp của văn chương và thể hiện bản thân qua lời văn.','Cử nhân Ngữ văn','3 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan. Hướng dẫn viết các dạng bài văn nghị luận, cảm nhận.','Nấu ăn các món truyền thống, đi bộ thư giãn'),
  ('user_190','Tôi thích kết hợp công nghệ vào giảng dạy **Sinh học** để bài học sinh động, dễ hiểu, đặc biệt là các kiến thức về di truyền và tiến hóa.','Tiến sĩ Sinh học','6 năm giảng dạy',
    'Tạo không khí học tích cực, khích lệ và không áp lực. Sử dụng các ứng dụng mô phỏng để học sinh dễ hiểu hơn về cấu trúc tế bào, hệ gen.','Chụp ảnh động vật hoang dã, đi phượt khám phá đa dạng sinh học'),
  ('user_191','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Toán học** nếu được truyền cảm hứng đúng cách, giúp các em tư duy logic và giải quyết vấn đề hiệu quả.','Tiến sĩ Toán học','11 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ từ cơ bản đến nâng cao. Tập trung vào việc xây dựng phương pháp giải từng loại bài.','Nấu ăn các món lạ, đi bộ trong công viên'),
  ('user_192','Với nhiều năm giảng dạy **Tiếng Anh**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng việc xây dựng lộ trình học cá nhân hóa và tạo môi trường thực hành giao tiếp thường xuyên.','Cử nhân Ngôn ngữ Anh','3 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Luyện ngữ pháp, từ vựng qua các bài tập đa dạng, kết hợp nghe nói đọc viết.','Chụp ảnh chân dung, đi phượt khám phá văn hóa các nước'),
  ('user_193','Tôi thích kết hợp công nghệ vào giảng dạy **Vật lý** để bài học sinh động, dễ hiểu, đặc biệt là các kiến thức về điện học và quang học.','Tiến sĩ Vật Lý','12 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ. Sử dụng các phần mềm mô phỏng thí nghiệm ảo để tăng tính trực quan.','Đọc sách chuyên ngành, nghe nhạc nhẹ thư giãn'),
  ('user_194','Với nhiều năm giảng dạy **Hóa học**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng việc giải thích cặn kẽ bản chất vấn đề và cung cấp nhiều ví dụ thực tế.','Tiến sĩ Hóa học','7 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ. Tập trung vào các phản ứng hóa học quan trọng và tính toán nồng độ, khối lượng.','Chụp ảnh thí nghiệm hóa học, đi phượt khám phá các mỏ khoáng sản'),
  ('user_195','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Văn học** nếu được truyền cảm hứng đúng cách, giúp các em thể hiện sự sáng tạo và cảm xúc cá nhân qua ngòi bút.','Cử nhân Ngữ văn','6 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ từ viết đoạn văn đến bài văn hoàn chỉnh. Tập trung vào kỹ năng phân tích, cảm thụ và diễn đạt.','Thiết kế bài giảng sáng tạo, vẽ tay các hình tượng văn học'),
  ('user_196','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Sinh học** nếu được truyền cảm hứng đúng cách, giúp các em khám phá thế giới tự nhiên và các ứng dụng trong y học.','Tiến sĩ Sinh học','9 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ. Tập trung vào các hệ cơ quan, di truyền và các bệnh phổ biến.','Chụp ảnh vi sinh vật, đi phượt khám phá hệ sinh thái rừng'),
  ('user_197','Dạy học **Toán học** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em phát triển tư duy logic và khả năng giải quyết vấn đề.','Tiến sĩ Toán học','8 năm giảng dạy',
    'Tạo không khí học tích cực, khích lệ và không áp lực. Tập trung vào các dạng bài tập khó và phương pháp giải nhanh.','Đọc sách chuyên ngành, nghe nhạc nhẹ giúp tập trung'),
  ('user_198','Tôi là giáo viên **Tiếng Anh** tâm huyết, luôn tìm cách đổi mới phương pháp dạy để giúp học sinh phát triển toàn diện 4 kỹ năng nghe, nói, đọc, viết.','Thạc sĩ Ngôn ngữ Anh','8 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan. Luyện phản xạ giao tiếp qua các tình huống nhập vai và thảo luận nhóm.','Thiết kế bài giảng tương tác, vẽ tay các hình ảnh minh họa từ vựng'),
  ('user_199','Dạy học **Vật lý** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em hiểu rõ các định luật tự nhiên và áp dụng vào cuộc sống.','Cử nhân Vật Lý','7 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ thực tế, giúp học sinh hình dung được các hiện tượng.','Trồng cây ăn quả, nghiên cứu giáo án và các thí nghiệm mới'),
  ('user_200','Dạy học **Hóa học** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em yêu thích môn học và khám phá những bí ẩn của các nguyên tố.','Thạc sĩ Hóa học','6 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ. Tập trung vào việc hiểu bản chất phản ứng, không chỉ học thuộc lòng.','Nấu ăn các món ăn đặc biệt, đi bộ thư giãn'),
  ('user_201','Tôi thích kết hợp công nghệ vào giảng dạy **Văn học** để bài học sinh động, dễ hiểu, đặc biệt là các tác phẩm thơ ca và truyện ngắn.','Cử nhân Ngữ văn','3 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Hướng dẫn học sinh phân tích tác phẩm, cảm thụ văn học và phát triển tư duy phản biện.','Nấu ăn các món chay, đi bộ trong công viên'),
  ('user_202','Với nhiều năm giảng dạy **Sinh học**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng cách liên hệ kiến thức với các vấn đề sức khỏe và môi trường.','Tiến sĩ Sinh học','14 năm giảng dạy',
    'Tạo không khí học tích cực, khích lệ và không áp lực. Khuyến khích học sinh đặt câu hỏi và thảo luận nhóm để hiểu sâu hơn.','Đọc sách chuyên ngành y học, nghe nhạc nhẹ thư giãn'),
  ('user_203','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Toán học** nếu được truyền cảm hứng đúng cách, giúp các em tự tin giải quyết các bài toán khó.','Tiến sĩ Toán học','10 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Tập trung vào việc xây dựng tư duy logic, phương pháp giải toán khoa học.','Thiết kế bài giảng logic, vẽ tay các sơ đồ giải toán'),
  ('user_204','Tôi là giáo viên **Tiếng Anh** tâm huyết, luôn tìm cách đổi mới phương pháp dạy để học sinh không còn sợ hãi khi học tiếng Anh.','Tiến sĩ Ngôn ngữ Anh','12 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan. Tập trung vào phát âm chuẩn, luyện nghe và nói các chủ đề thường gặp.','Thiết kế bài giảng tương tác, vẽ tay các nhân vật hoạt hình'),
  ('user_205','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Vật lý** nếu được truyền cảm hứng đúng cách, giúp các em khám phá những bí ẩn của vũ trụ qua các định luật vật lý.','Thạc sĩ Vật Lý','5 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan. Giải thích các hiện tượng vật lý qua video và thí nghiệm đơn giản.','Nấu ăn các món mới, đi bộ thư giãn'),
  ('user_206','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Hóa học** nếu được truyền cảm hứng đúng cách, giúp các em hiểu rõ hơn về thế giới xung quanh qua lăng kính hóa học.','Tiến sĩ Hóa học','3 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ thực tế. Tập trung vào các ứng dụng hóa học trong đời sống hàng ngày.','Trồng cây ăn quả, nghiên cứu các phát minh khoa học'),
  ('user_207','Dạy học **Văn học** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em cảm thụ vẻ đẹp của ngôn ngữ và văn hóa.','Thạc sĩ Ngữ văn','4 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ. Hướng dẫn cách phân tích sâu các tác phẩm, phát triển kỹ năng viết văn.','Thiết kế bài giảng sáng tạo, vẽ tay các hình tượng nghệ thuật'),
  ('user_208','Dạy học **Sinh học** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em hiểu rõ về cơ thể sống và các quy luật tự nhiên.','Thạc sĩ Sinh học','7 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Sử dụng các mô hình 3D và hình ảnh sắc nét để minh họa kiến thức.','Trồng cây cảnh, nghiên cứu các loài thực vật'),
  ('user_209','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Toán học** nếu được truyền cảm hứng đúng cách, giúp các em yêu thích việc giải toán và phát triển tư duy.','Thạc sĩ Toán học','7 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Tập trung vào việc rèn luyện tư duy giải quyết vấn đề qua các bài toán thực tế.','Thiết kế bài giảng logic, vẽ tay các đồ thị hàm số'),
  ('user_210','Tôi là giáo viên **Tiếng Anh** tâm huyết, luôn tìm cách đổi mới phương pháp dạy để học sinh hứng thú hơn với ngôn ngữ và văn hóa Anh - Mỹ.','Thạc sĩ Ngôn ngữ Anh','12 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan. Lồng ghép các bài hát, phim ngắn để tăng cường khả năng nghe, nói.','Đọc sách chuyên ngành, nghe nhạc nhẹ quốc tế'),
  ('user_211','Tôi thích kết hợp công nghệ vào giảng dạy **Vật lý** để bài học sinh động, dễ hiểu, đặc biệt là các kiến thức về cơ học và nhiệt học.','Thạc sĩ Vật Lý','12 năm giảng dạy',
    'Tạo không khí học tích cực, khích lệ và không áp lực. Sử dụng các phần mềm mô phỏng để học sinh thực hành các thí nghiệm ảo.','Thiết kế bài giảng điện tử, vẽ tay các sơ đồ vật lý'),
  ('user_212','Với nhiều năm giảng dạy **Hóa học**, tôi hiểu cách giúp học sinh vượt qua khó khăn bằng cách chia nhỏ bài học theo từng dạng, luyện tập chuyên sâu từng chủ đề.','Thạc sĩ Hóa học','13 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ. Tập trung vào việc giải thích bản chất các phản ứng và tính toán hóa học.','Thiết kế bài giảng tương tác, vẽ tay các công thức hóa học phức tạp'),
  ('user_213','Tôi là giáo viên **Văn học** tâm huyết, luôn tìm cách đổi mới phương pháp dạy để khơi gợi niềm đam mê văn chương trong học sinh.','Cử nhân Ngữ văn','8 năm giảng dạy',
    'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ. Hướng dẫn cách phân tích tác phẩm, cảm thụ văn học và phát triển kỹ năng viết.','Đọc sách chuyên ngành, nghe nhạc nhẹ thư giãn'),
  ('user_214','Tôi thích kết hợp công nghệ vào giảng dạy **Sinh học** để bài học sinh động, dễ hiểu, đặc biệt là các kiến thức về di truyền và tế bào.','Tiến sĩ Sinh học','15 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ. Sử dụng các video khoa học và hình ảnh minh họa để tăng tính trực quan.','Chụp ảnh thiên nhiên, đi phượt khám phá đa dạng sinh học'),
  ('user_215','Dạy học **Toán học** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em phát triển tư duy phản biện và giải quyết vấn đề.','Tiến sĩ Toán học','8 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Tập trung vào việc rèn luyện khả năng tư duy độc lập, sáng tạo trong giải toán.','Chụp ảnh phong cảnh, đi phượt khám phá các di tích'),
  ('user_216','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Tiếng Anh** nếu được truyền cảm hứng đúng cách, giúp các em tự tin giao tiếp và sử dụng tiếng Anh trong công việc.','Cử nhân Ngôn ngữ Anh','12 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ từ cơ bản đến nâng cao. Tập trung vào việc luyện phát âm chuẩn và ngữ điệu tự nhiên.','Đọc sách chuyên ngành, nghe nhạc nhẹ quốc tế'),
  ('user_217','Dạy học **Vật lý** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em hiểu sâu các khái niệm và định luật vật lý.','Thạc sĩ Vật Lý','11 năm giảng dạy',
    'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan. Giải thích các hiện tượng vật lý phức tạp một cách đơn giản nhất.','Trồng cây cảnh, nghiên cứu các công trình khoa học mới'),
  ('user_218','Tôi tin rằng mỗi học sinh đều có thể tiến bộ trong **Hóa học** nếu được truyền cảm hứng đúng cách, giúp các em yêu thích môn học và giải quyết các bài tập thực tế.','Cử nhân Hóa học','12 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Tập trung vào các phản ứng hóa học trong đời sống và sản xuất công nghiệp.','Thiết kế bài giảng trực quan, vẽ tay các sơ đồ phản ứng hóa học'),
  ('user_219','Dạy học **Văn học** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em phát triển khả năng viết và cảm thụ văn chương.','Tiến sĩ Ngữ văn','14 năm giảng dạy',
    'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ. Tập trung vào việc phân tích sâu các tác phẩm và phát triển tư duy phản biện.','Trồng cây ăn trái, nghiên cứu giáo án mới'),
  ('user_220','Dạy học **Sinh học** với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh, giúp các em khám phá thế giới sinh vật và ứng dụng vào cuộc sống.','Thạc sĩ Sinh học','4 năm giảng dạy',
    'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao. Sử dụng các video và hình ảnh minh họa để giải thích các quá trình sinh học.','Đọc sách chuyên ngành, nghe nhạc nhẹ thư giãn');


INSERT INTO posts (post_id, user_id, content, status) VALUES
-- post_001 - Quang (Toán) - private
('post_001', 'user_001',
'📌 TÌM GIA SƯ TOÁN LỚP 11 - CẦN NGƯỜI “HỒI SINH” TINH THẦN HỌC TẬP

Em tên là Quang, học sinh lớp 11 trường THPT Nhân Chính. Em từng khá ổn môn Toán, nhưng từ học kỳ 1 lớp 11, khi chương trình bắt đầu chuyển sang các chuyên đề khó như hàm số, giới hạn, đạo hàm và hình học không gian, em tụt lại. Dù chăm chỉ nhưng em học không hiệu quả, làm bài sai nhiều, điểm kiểm tra thấp khiến em ngày càng mất tự tin và không còn động lực học.

Em mong muốn tìm được một anh/chị/thầy/cô có thể:
• Dạy lại em từ những phần nền tảng với cách tiếp cận gần gũi, dễ hiểu
• Giải thích bản chất, không chỉ đưa ra công thức rồi bắt chép
• Sửa lỗi sai trong cách trình bày, giúp em tránh lặp lại lỗi cũ
• Truyền cảm hứng để em cảm thấy Toán không còn khô khan, nhàm chán

🎯 Mục tiêu của em là: lấy lại kiến thức cơ bản lớp 11, chuẩn bị nền tảng ôn thi đại học, và đạt tối thiểu 7 điểm trong các bài thi học kỳ.
🕒 Em rảnh các buổi tối T2 - T4 - T6 sau 19h30, hoặc cả ngày Chủ nhật.
💰 Học phí: từ 200k - 250k/buổi. Em có thể học online (qua Google Meet) hoặc offline nếu gần khu vực Thanh Xuân, Hà Nội.

Em là người nghiêm túc, chịu khó, chỉ là đang bị “mất lửa”. Em mong sẽ tìm được người giúp em “bật lại mode học hành”.', 'private'),

-- post_002 - Linh (Văn) - private
('post_002', 'user_002',
'📖 TÌM GIA SƯ VĂN ÔN THI ĐẠI HỌC - “VIẾT GÌ CŨNG DỞ” LÀ EM 😔

Chào các thầy cô và anh chị, em là Linh – học sinh lớp 12, đang ôn thi đại học và cực kỳ khủng hoảng với môn Ngữ Văn. Em không ghét môn Văn, em thích đọc sách, xem phim, thậm chí rất hay suy nghĩ về cuộc sống. Nhưng đến khi viết bài thì em lại... “viết không ra chữ”. Em lạc đề, triển khai ý lộn xộn, bài văn không có trọng tâm, kết bài thì cạn từ.

Em cần một cô giáo có thể:
• Giúp em tư duy logic hơn trong việc lập dàn ý
• Luyện từng đoạn văn cụ thể (mở – thân – kết)
• Phân tích các tác phẩm trọng tâm sát đề thi
• Chỉnh sửa bài viết chi tiết, góp ý thẳng thắn nhưng nhẹ nhàng
• Truyền được cảm hứng viết – biến môn Văn từ “nỗi sợ” thành điều thú vị

🎯 Em đặt mục tiêu đạt ít nhất 7 điểm Văn trong kỳ thi tốt nghiệp. Em cần bắt đầu từ căn bản vì đang bị “mất nền”.
🕒 Thời gian học: tối 2 - 4 - 6 hoặc sáng cuối tuần.
💻 Ưu tiên học online qua Google Meet.
💰 Học phí: 200k - 230k/buổi.

Em rất mong tìm được một người có thể đồng hành và kiên nhẫn, vì em tin nếu có người hướng dẫn đúng cách, em có thể tiến bộ nhanh chóng.', 'private'),

-- post_003 - Minh (Hóa) - private
('post_003', 'user_003',
'🧪 CẦN GIA SƯ HÓA CƠ BẢN - CỨU VỚT MỘT TÂM HỒN ĐANG MÊ MÀN HÌNH PHẢN ỨNG

Em là Minh, học sinh lớp 10. Em thấy Hóa học rất... đẹp và kỳ diệu, nhưng chỉ là khi xem video TikTok 🤯. Còn khi vào bài học trên lớp thì em không hiểu gì, không biết bắt đầu từ đâu. Em bị rối khi học bảng tuần hoàn, không hiểu được phản ứng oxi hóa – khử và toàn bị nhầm lẫn giữa chất này với chất kia. Em đã thử học thêm online nhưng học mãi không vô đầu.

Em cần một gia sư có thể:
• Dạy lại từ gốc, kể cả những kiến thức lớp 8 – 9 nếu cần
• Giải thích bằng sơ đồ, ví dụ đời thường để em dễ nhớ
• Luyện em làm bài tập theo mức độ từ dễ → trung bình → nâng cao
• Động viên và cho bài tập thực hành ngắn sau mỗi buổi học

📚 Em muốn học các phần: hóa trị, phản ứng, dãy hoạt động kim loại, nhận biết chất.
🕒 Em học buổi tối từ 19h, các ngày chẵn trong tuần (T2 - T4 - T6).
💻 Online qua Zoom hoặc Google Meet là tốt nhất.
💰 Em có thể chi trả khoảng 200k/buổi.

Em học không nhanh, nhưng cực kỳ chăm chỉ. Mong thầy/cô kiên nhẫn và có phong cách dạy vui vẻ, khơi gợi được sự tò mò của em!', 'private'),

-- post_004 - Thu (Tiếng Anh) - private
('post_004', 'user_004',
'🇬🇧 TÌM CÔ GIÁO TIẾNG ANH ÔN THI - NGHE KHÔNG RA, VIẾT KHÔNG XONG 😥

Em là Thu, lớp 12. Trong kỳ thi đại học sắp tới, em muốn lấy tiếng Anh làm điểm mạnh, nhưng hiện tại thì lại đang rất yếu. Em không nghe được audio, khi viết essay thì thiếu từ vựng, sai ngữ pháp, thiếu ý. Em đã thử học theo app, xem phim có phụ đề, nhưng không hiệu quả vì không có người chỉnh sửa.

Em muốn tìm cô giáo:
• Luyện phản xạ Listening bằng cách làm đề từng dạng (MCQ, điền từ…)
• Hướng dẫn viết từng dạng Writing task, sửa bài chi tiết
• Mở rộng vốn từ theo chủ đề: môi trường, giáo dục, xã hội, công nghệ
• Giúp em sửa phát âm và luyện nói nếu có thể

🕒 Em có thể học tối 3 - 5 hoặc sáng T7.
💻 Học online.
💰 Học phí từ 220k - 250k/buổi.

Em hy vọng cô giáo có thể truyền cảm hứng và động lực, giúp em vững tin để thi đạt 8.0+ môn tiếng Anh.', 'private'),

-- post_005 - Sơn (Toán) - private
('post_005', 'user_005',
'🔥 GIA SƯ TOÁN CẦN LẮM NGƯỜI DẪN ĐƯỜNG – EM KHÔNG MUỐN TRẦM CẢM VÌ TOÁN NỮA

Chào mọi người, em là Sơn – học lớp 11, một học sinh “sợ Toán nhưng lại bắt buộc phải giỏi Toán”. Học lực của em trung bình khá, nhưng riêng Toán thì rất chật vật. Em hiểu bài trên lớp nhưng không biết áp dụng, làm bài sai hoài. Em bị rối trong bất phương trình, cực trị, hệ phương trình, đạo hàm…

Em muốn có:
• Một thầy/cô dạy từ nền, phân tích từng dạng bài đơn giản trước rồi nâng cấp
• Có phương pháp luyện đề theo mức độ, giúp em không bị rối
• Đặc biệt là có sự kiên nhẫn, không la mắng khi em sai hoài 🙏

🕒 Thời gian: tối T2 - T4 - T6, sau 19h30. Cuối tuần thì buổi sáng.
💰 Học phí: 220k/buổi.
💻 Online học qua Google Meet hoặc Zalo call đều được.

Em cam kết học chăm, làm bài đầy đủ – chỉ cần có người hướng dẫn đúng cách thôi ạ!', 'private'),

-- post_006 - Hạnh (Sinh học) - private
('post_006', 'user_006',
'🧬 CẦN GIA SƯ SINH CẤP TỐC - CỨU EM KHỎI “CHẾT CHÌM” TRONG DI TRUYỀN HỌC

Em là Hạnh, học sinh lớp 12. Em chưa từng ghét môn Sinh học, nhưng vì thiếu người định hướng, em bị trôi giữa một “rừng” khái niệm: gen, mã di truyền, ADN, ARN, đột biến, biến dị tổ hợp... Em học rất chăm, ghi chép đầy đủ nhưng vẫn không hiểu, và sắp tới em có bài kiểm tra rất quan trọng.

Em muốn tìm một cô giáo có thể:
• Dạy thật chậm, từ vựng dễ hiểu, sử dụng sơ đồ tư duy và ví dụ minh họa
• Chia bài học theo chuyên đề, luyện các dạng trắc nghiệm nâng dần độ khó
• Hướng dẫn cách phân tích đề, làm nhanh mà không sai vặt
• Có thể truyền cho em chút cảm hứng để học không bị căng thẳng

🎯 Mục tiêu: ít nhất 7.5 điểm kiểm tra, dần hướng tới ôn thi tốt nghiệp.
🕒 Em rảnh sáng thứ 7, chiều CN, tối T3 - T5.
💰 Học phí mong muốn: 180k - 230k/buổi.
💻 Học online qua Zoom là tiện nhất.

Em là người kiên trì, nhưng cần cô giáo có tâm lý tốt để không tạo áp lực thêm. Mong được đồng hành ạ!', 'private'),

-- post_007 - Khoa (Vật lý) - private
('post_007', 'user_007',
'⚡ TÌM GIA SƯ LÝ - GIẢI THÍCH GIÚP EM “KHÔNG HỌC VẸT” NỮA 📉

Em là Khoa, học sinh lớp 11. Vật lý với em như một bài nhạc nước ngoài - có giai điệu hay, nhưng không hiểu lời. Những phần như dao động điều hòa, dòng điện xoay chiều, mạch RLC… đọc thì hiểu “na ná” nhưng vào bài tập là em không biết bắt đầu từ đâu.

Em cần một thầy/cô:
• Giải thích bản chất hiện tượng lý – ví dụ dễ hình dung (bằng hoạt hình, sơ đồ)
• Hướng dẫn kỹ cách lập phương trình, vẽ đồ thị, suy luận từ đề bài
• Dạy theo hướng ứng dụng thực tế – học là để hiểu, không phải học thuộc
• Luôn động viên khi em làm sai, và tạo môi trường học tích cực

📚 Em muốn được học từ cơ bản tới làm đề luyện thi học kỳ.
🕒 Tối T3 - T5 (sau 20h) hoặc sáng CN.
💰 200k - 250k/buổi là hợp lý với khả năng của em.
💻 Em học online hoặc offline nếu ở gần Long Biên, Hà Nội.

Hy vọng tìm được người “giải mã” được sự khó hiểu của môn Lý ạ!', 'private'),

-- post_008 - Thảo (Hóa vào 10) - private
('post_008', 'user_008',
'📚 TÌM GIA SƯ HÓA ÔN VÀO 10 - HỌC NHIỀU MÀ VẪN LUÔN QUÊN 😓

Em tên là Thảo, năm nay chuẩn bị thi vào lớp 10 chuyên nhưng lại khá yếu môn Hóa. Em đã học hết chương trình, ghi chép cẩn thận, làm đề nhưng lúc kiểm tra lại không làm được. Em bị loạn công thức, nhầm hóa trị, viết sai phương trình phản ứng. Em đang rất áp lực nhưng vẫn quyết tâm cải thiện.

Em cần:
• Một cô giáo thật dễ gần, dạy chắc phần lý thuyết – có sơ đồ hóa học giúp ghi nhớ
• Hướng dẫn cách giải bài tập phản ứng, dãy hoạt động kim loại, nhận biết chất
• Có đề luyện theo sát chương trình thi tuyển sinh lớp 10
• Có thể đưa ra kế hoạch học theo tuần để em theo sát mục tiêu

🕒 Em học chiều thứ 6 và sáng chủ nhật.
💰 Học phí em có thể trả từ 150k - 200k/buổi.
💻 Học online là tiện nhất vì em ở Thanh Trì.

Em hy vọng tìm được một cô giáo kiên nhẫn, nhẹ nhàng và có thể cùng em “cán đích” kỳ thi sắp tới!', 'private'),

-- post_009 - Hoàng (Toán 12) - private
('post_009', 'user_009',
'📘 GIA SƯ TOÁN 12 - HỌC TỪ NỀN TẢNG, HƯỚNG TỚI THI ĐẠI HỌC

Em là Hoàng, học sinh lớp 12. Em đã “lướt” qua chương trình Toán lớp 12 một cách rất hời hợt, nên giờ em thấy mình không có đủ nền để bước vào giai đoạn luyện thi. Em muốn được học từ đầu – từng chuyên đề – theo lộ trình rõ ràng để cuối năm không phải “chạy nước rút”.

Em mong có:
• Một thầy/cô có kinh nghiệm luyện thi tốt nghiệp, dạy theo hệ thống
• Giải thích rõ ràng, không nhảy bước, sửa bài chi tiết
• Có tài liệu luyện đề và bài tập rèn kỹ năng trình bày
• Có thể tư vấn cách phân bổ thời gian học hiệu quả

🕒 Em học tối thứ 2 - 6, hoặc sáng thứ 7.
💻 Online là lựa chọn chính, nhưng nếu thầy/cô gần Nam Từ Liêm, em có thể học trực tiếp.
💰 220k - 270k/buổi.

Em không cần người “ép học”, em cần người “giúp học”. Rất mong gặp được thầy/cô phù hợp!', 'private'),

-- post_010 - Mai (Văn) - private
('post_010', 'user_010',
'✍️ CẦN GIA SƯ VĂN - GIÚP EM BIẾN LỜI NÓI THÀNH CÂU VĂN CÓ Ý NGHĨA 🎤

Em là Mai, học sinh lớp 12. Em rất thích nói, thích chia sẻ suy nghĩ về các vấn đề xã hội, nhân vật trong tác phẩm văn học, nhưng khi chuyển thành bài viết thì mọi thứ rối tung. Câu không tròn ý, ý không bám đề, văn thiếu chiều sâu. Em cần cô giáo không chỉ giúp em học để thi mà còn học để thể hiện được cá tính trong văn chương.

Em mong muốn:
• Được luyện kỹ từng kiểu bài (nghị luận xã hội – nghị luận văn học)
• Được sửa bài viết theo cách góp ý xây dựng, không “gạch xóa” quá nhiều 😅
• Có cơ hội trao đổi và thảo luận để làm giàu ý tưởng viết
• Tạo môi trường học nhẹ nhàng, không căng thẳng

🕒 Chiều T4 - T6 hoặc sáng CN.
💻 Em học online qua Google Meet.
💰 Khoảng 200k - 230k/buổi.

Em tin nếu được chỉ đúng cách, em sẽ có thể viết được những bài văn có hồn, có chiều sâu hơn.', 'private'),

-- post_021 - Học Sinh 021 (Văn) - private
('post_021', 'user_021',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 021, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và phân tích tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 184k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_022 - Học Sinh 022 (Văn) - private
('post_022', 'user_022',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 022, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như dàn ý và viết đoạn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 185k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_023 - Học Sinh 023 (Lý) - private
('post_023', 'user_023',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 023, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 219k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_024 - Học Sinh 024 (Văn) - private
('post_024', 'user_024',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 024, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và cảm thụ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 209k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_025 - Học Sinh 025 (Văn) - private
('post_025', 'user_025',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 025, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 209k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_026 - Học Sinh 026 (Lý) - private
('post_026', 'user_026',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 026, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như đồ thị và cảm ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 184k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_027 - Học Sinh 027 (Sinh) - private
('post_027', 'user_027',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 027, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như ADN và di truyền, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 186k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_028 - Học Sinh 028 (Hóa) - public
('post_028', 'user_028',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 028, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và oxi hóa khử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 216k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_029 - Học Sinh 029 (Toán) - public
('post_029', 'user_029',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 029, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hàm số và hình học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 204k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_030 - Học Sinh 030 (Lý) - public
('post_030', 'user_030',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 030, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện xoay chiều và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_031 - Học Sinh 031 (Toán) - public
('post_031', 'user_031',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 031, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như tích phân và bất phương trình, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 223k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_032 - Học Sinh 032 (Hóa) - public
('post_032', 'user_032',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 032, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và bảng tuần hoàn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 249k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_033 - Học Sinh 033 (Toán) - public
('post_033', 'user_033',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 033, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học và hàm số, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ
🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 206k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_034 - Học Sinh 034 (Văn) - public
('post_034', 'user_034',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 034, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích tác phẩm và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_035 - Học Sinh 035 (Anh) - public
('post_035', 'user_035',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 035, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Writing và Từ vựng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 226k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_036 - Học Sinh 036 (Văn) - public
('post_036', 'user_036',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 036, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_037 - Học Sinh 037 (Lý) - public
('post_037', 'user_037',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 037, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 242k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_038 - Học Sinh 038 (Anh) - public
('post_038', 'user_038',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 038, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Nói và Listening, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 245k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_039 - Học Sinh 039 (Anh) - public
('post_039', 'user_039',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 039, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Từ vựng và Nói, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 185k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_040 - Học Sinh 040 (Văn) - public
('post_040', 'user_040',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 040, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và viết đoạn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 206k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_041 - Học Sinh 041 (Sinh) - public
('post_041', 'user_041',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 041, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 218k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_042 - Học Sinh 042 (Anh) - public
('post_042', 'user_042',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 042, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Writing và Từ vựng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 201k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_043 - Học Sinh 043 (Sinh) - public
('post_043', 'user_043',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 043, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 196k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_044 - Học Sinh 044 (Sinh) - public
('post_044', 'user_044',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 044, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 209k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_045 - Học Sinh 045 (Lý) - public
('post_045', 'user_045',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 045, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như đồ thị và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 244k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_046 - Học Sinh 046 (Sinh) - public
('post_046', 'user_046',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 046, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_047 - Học Sinh 047 (Lý) - public
('post_047', 'user_047',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 047, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_048 - Học Sinh 048 (Sinh) - public
('post_048', 'user_048',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 048, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 221k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_049 - Học Sinh 049 (Anh) - public
('post_049', 'user_049',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 049, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Listening và Ngữ pháp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 189k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_050 - Học Sinh 050 (Toán) - public
('post_050', 'user_050',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 050, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học và đạo hàm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 201k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_051 - Học Sinh 051 (Hóa) - public
('post_051', 'user_051',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 051, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như bảng tuần hoàn và tính chất hóa học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 244k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_052 - Học Sinh 052 (Văn) - public
('post_052', 'user_052',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 052, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và phân tích tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 188k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_053 - Học Sinh 053 (Lý) - public
('post_053', 'user_053',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 053, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 232k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_054 - Học Sinh 054 (Toán) - public
('post_054', 'user_054',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 054, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như đạo hàm và hình học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 249k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_055 - Học Sinh 055 (Lý) - public
('post_055', 'user_055',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 055, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và mạch điện, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 235k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_056 - Học Sinh 056 (Toán) - private
('post_056', 'user_056',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 056, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như tích phân và hình học không gian, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 3 - 5 - 7
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_057 - Học Sinh 057 (Anh) - public
('post_057', 'user_057',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 057, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Ngữ pháp và Reading comprehension, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 225k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_058 - Học Sinh 058 (Lý) - private
('post_058', 'user_058',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 058, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như sóng cơ và điện một chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_059 - Học Sinh 059 (Hóa) - public
('post_059', 'user_059',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 059, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như axit-bazơ và dung dịch, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào chiều thứ 7, sáng chủ nhật
💰 Học phí mong muốn: 195k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_060 - Học Sinh 060 (Văn) - private
('post_060', 'user_060',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 060, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích nhân vật và nghị luận xã hội, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_061 - Học Sinh 061 (Sinh) - public
('post_061', 'user_061',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 061, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh thái học và môi trường, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 3, 5
💰 Học phí mong muốn: 180k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_062 - Học Sinh 062 (Toán) - private
('post_062', 'user_062',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 062, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như khảo sát hàm số và phương trình, bất phương trình mũ - logarit, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_063 - Học Sinh 063 (Anh) - public
('post_063', 'user_063',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 063, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Writing Task 1 & 2 (IELTS) và Speaking fluency, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 250k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_064 - Học Sinh 064 (Lý) - private
('post_064', 'user_064',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 064, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như định luật Faraday và mạch điện RLC, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_065 - Học Sinh 065 (Hóa) - public
('post_065', 'user_065',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 065, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như các loại phản ứng và chất hữu cơ đơn giản, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 3 - 5 - 7
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_066 - Học Sinh 066 (Văn) - private
('post_066', 'user_066',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 066, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như lập dàn ý cho bài văn và phân tích thơ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi sáng trong tuần
💰 Học phí mong muốn: 190k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_067 - Học Sinh 067 (Sinh) - public
('post_067', 'user_067',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 067, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như cơ chế di truyền và biến dị, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_068 - Học Sinh 068 (Toán) - private
('post_068', 'user_068',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 068, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học tọa độ trong không gian và số phức, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều thứ 7, Chủ nhật
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_069 - Học Sinh 069 (Anh) - public
('post_069', 'user_069',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 069, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như phát âm chuẩn và luyện nói tự nhiên, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 235k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_070 - Học Sinh 070 (Lý) - private
('post_070', 'user_070',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 070, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như quang học và hạt nhân nguyên tử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_071 - Học Sinh 071 (Hóa) - public
('post_071', 'user_071',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 071, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như cân bằng phương trình và tính toán theo phương trình, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 3 - 5 - 7
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_072 - Học Sinh 072 (Văn) - private
('post_072', 'user_072',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 072, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như nghị luận văn học về thơ và văn xuôi, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_073 - Học Sinh 073 (Toán) - public
('post_073', 'user_073',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 073, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hệ phương trình và bất phương trình bậc cao, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_074 - Học Sinh 074 (Anh) - private
('post_074', 'user_074',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 074, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như phát âm chuẩn và kỹ năng viết email/thư, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 7, Chủ nhật
💰 Học phí mong muốn: 245k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_075 - Học Sinh 075 (Lý) - public
('post_075', 'user_075',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 075, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện trường và từ trường, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_076 - Học Sinh 076 (Sinh) - private
('post_076', 'user_076',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 076, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học tế bào và phân tử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_077 - Học Sinh 077 (Hóa) - public
('post_077', 'user_077',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 077, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hidrocacbon và dẫn xuất của hidrocacbon, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_078 - Học Sinh 078 (Văn) - private
('post_078', 'user_078',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 078, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như đọc hiểu và viết bài văn thuyết minh, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 3 - 5 - 7
💰 Học phí mong muốn: 195k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_079 - Học Sinh 079 (Toán) - public
('post_079', 'user_079',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 079, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như lượng giác và phương trình lượng giác, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 225k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_080 - Học Sinh 080 (Anh) - private
('post_080', 'user_080',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 080, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như luyện đề thi thử và kỹ năng giải đề nhanh, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 250k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_081 - Học Sinh 081 (Lý) - public
('post_081', 'user_081',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 081, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cơ học chất lỏng và khí, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_082 - Học Sinh 082 (Sinh) - private
('post_082', 'user_082',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 082, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và phân loại thế giới sống, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi sáng trong tuần
💰 Học phí mong muốn: 185k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_083 - Học Sinh 083 (Hóa) - public
('post_083', 'user_083',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 083, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như kim loại và hợp chất của kim loại, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_084 - Học Sinh 084 (Văn) - private
('post_084', 'user_084',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 084, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích truyện ngắn và cách xây dựng luận điểm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_085 - Học Sinh 085 (Toán) - public
('post_085', 'user_085',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 085, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như ứng dụng đạo hàm để giải toán và hình học phẳng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 235k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_086 - Học Sinh 086 (Anh) - private
('post_086', 'user_086',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 086, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như kỹ năng nghe hiểu và luyện dịch, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 3 - 5 - 7
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_087 - Học Sinh 087 (Lý) - public
('post_087', 'user_087',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 087, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như sóng ánh sáng và hiện tượng giao thoa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_088 - Học Sinh 088 (Sinh) - private
('post_088', 'user_088',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 088, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như miễn dịch và bệnh tật, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 190k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_089 - Học Sinh 089 (Hóa) - public
('post_089', 'user_089',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 089, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như polime và vật liệu polime, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_090 - Học Sinh 090 (Văn) - private
('post_090', 'user_090',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 090, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích các tác phẩm văn học hiện đại và kỹ năng phản biện, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_091 - Học Sinh 091 (Toán) - public
('post_091', 'user_091',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 091, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như tổ hợp xác suất và phương pháp giải bài tập trắc nghiệm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_092 - Học Sinh 092 (Anh) - private
('post_092', 'user_092',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 092, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như viết lại câu và bài tập điền từ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_093 - Học Sinh 093 (Lý) - public
('post_093', 'user_093',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 093, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện từ học và các định luật về điện, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 225k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_094 - Học Sinh 094 (Sinh) - private
('post_094', 'user_094',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 094, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học vi sinh vật và ứng dụng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 195k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_095 - Học Sinh 095 (Hóa) - public
('post_095', 'user_095',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 095, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như điện phân và phản ứng oxi hóa - khử trong dung dịch, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 3 - 5 - 7
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_096 - Học Sinh 096 (Văn) - private
('post_096', 'user_096',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 096, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích tác phẩm truyện dài và cách xây dựng ý tưởng cho bài viết, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_097 - Học Sinh 097 (Toán) - public
('post_097', 'user_097',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 097, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như giải tích tổ hợp và các bài toán thực tế, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_098 - Học Sinh 098 (Anh) - private
('post_098', 'user_098',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 098, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như ngữ pháp nâng cao và cấu trúc câu phức tạp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 245k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_099 - Học Sinh 099 (Lý) - public
('post_099', 'user_099',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 099, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như vật lý hạt nhân và ứng dụng của vật lý hạt nhân, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_100 - Học Sinh 100 (Sinh) - private
('post_100', 'user_100',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 100, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học vi rút và bệnh do vi rút gây ra, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 185k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_101 - Học Sinh 101 (Toán) - public
('post_101', 'user_101',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 101, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học giải tích trong không gian và tích phân hàm nhiều biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 3 - 5 - 7
💰 Học phí mong muốn: 250k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_102 - Học Sinh 102 (Anh) - private
('post_102', 'user_102',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 102, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như IELTS General Training (viết thư, biểu đồ) và các mẫu câu giao tiếp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 260k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_103 - Học Sinh 103 (Lý) - public
('post_103', 'user_103',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 103, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cơ học lượng tử và thuyết tương đối, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_104 - Học Sinh 104 (Hóa) - private
('post_104', 'user_104',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 104, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như các nguyên tố chuyển tiếp và phức chất, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 7, Chủ nhật
💰 Học phí mong muốn: 225k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_105 - Học Sinh 105 (Văn) - public
('post_105', 'user_105',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 105, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích các tác phẩm văn học trung đại và kỹ năng viết bài bình luận văn học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_106 - Học Sinh 106 (Sinh) - private
('post_106', 'user_106',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 106, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học di truyền quần thể và ứng dụng trong thực tế, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_107 - Học Sinh 107 (Toán) - public
('post_107', 'user_107',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 107, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như phương trình vi phân và chuỗi số, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 245k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_108 - Học Sinh 108 (Anh) - private
('post_108', 'user_108',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 108, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Writing (học thuật) và cách trình bày ý tưởng mạch lạc, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 3 - 5 - 7
💰 Học phí mong muốn: 255k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_109 - Học Sinh 109 (Lý) - public
('post_109', 'user_109',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 109, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như các loại dao động và sóng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_110 - Học Sinh 110 (Hóa) - private
('post_110', 'user_110',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 110, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hóa học vật liệu và ứng dụng trong công nghiệp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_111 - Học Sinh 111 (Văn) - public
('post_111', 'user_111',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 111, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như lý luận văn học và cách phân tích phong cách nghệ thuật của tác giả, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_112 - Học Sinh 112 (Sinh) - private
('post_112', 'user_112',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 112, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như công nghệ sinh học và ứng dụng trong y học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 190k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_113 - Học Sinh 113 (Toán) - public
('post_113', 'user_113',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 113, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như đại số tuyến tính và không gian vector, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 260k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_114 - Học Sinh 114 (Anh) - private
('post_114', 'user_114',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 114, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như TOEIC (nghe, đọc) và kỹ năng làm bài thi nhanh, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_115 - Học Sinh 115 (Lý) - public
('post_115', 'user_115',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 115, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như nhiệt động lực học và các quá trình nhiệt, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 225k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_116 - Học Sinh 116 (Hóa) - private
('post_116', 'user_116',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 116, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hóa học môi trường và các vấn đề ô nhiễm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 235k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_117 - Học Sinh 117 (Văn) - public
('post_117', 'user_117',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 117, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như văn học dân gian và cách phân tích các thể loại ca dao, tục ngữ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 3 - 5 - 7
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_118 - Học Sinh 118 (Sinh) - private
('post_118', 'user_118',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 118, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học thực vật và quá trình quang hợp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 195k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_119 - Học Sinh 119 (Toán) - public
('post_119', 'user_119',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 119, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như lý thuyết đồ thị và ứng dụng trong thực tế, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 255k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_120 - Học Sinh 120 (Anh) - private
('post_120', 'user_120',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 120, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như tiếng Anh thương mại và kỹ năng thuyết trình bằng tiếng Anh, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 270k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_121 - Học Sinh 121 (Lý) - public
('post_121', 'user_121',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 121, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như quang phổ và tia X, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_122 - Học Sinh 122 (Hóa) - private
('post_122', 'user_122',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 122, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như điện hóa và ứng dụng của điện hóa trong thực tế, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào tối thứ 3 - 5 - 7
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_123 - Học Sinh 123 (Văn) - public
('post_123', 'user_123',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 123, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như văn học nước ngoài và cách phân tích các tác phẩm kinh điển, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_124 - Học Sinh 124 (Sinh) - private
('post_124', 'user_124',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 124, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học động vật và hệ cơ quan, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_125 - Học Sinh 125 (Toán) - public
('post_125', 'user_125',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 125, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như lý thuyết số và mật mã học cơ bản, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 270k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_126 - Học Sinh 126 (Anh) - private
('post_126', 'user_126',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 126, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như tiếng Anh du lịch và các cụm từ giao tiếp cơ bản, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 250k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_127 - Học Sinh 127 (Lý) - public
('post_127', 'user_127',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 127, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như vật lý thiên văn và vũ trụ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 235k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_128 - Học Sinh 128 (Hóa) - private
('post_128', 'user_128',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 128, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hóa học phân tích và các phương pháp sắc ký, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 245k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_129 - Học Sinh 129 (Văn) - public
('post_129', 'user_129',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 129, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như lịch sử văn học Việt Nam và các trào lưu văn học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 3 - 5 - 7
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_130 - Học Sinh 130 (Sinh) - private
('post_130', 'user_130',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 130, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh lý học người và các hệ cơ quan, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_131 - Học Sinh 131 (Toán) - public
('post_131', 'user_131',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 131, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học phi Euclide và các khái niệm nâng cao, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 280k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_132 - Học Sinh 132 (Anh) - private
('post_132', 'user_132',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 132, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như tiếng Anh chuyên ngành y tế và các thuật ngữ y khoa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 275k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_133 - Học Sinh 133 (Lý) - public
('post_133', 'user_133',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 133, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như vật lý trạng thái rắn và bán dẫn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_134 - Học Sinh 134 (Hóa) - private
('post_134', 'user_134',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 134, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hóa học hữu cơ nâng cao và các phản ứng tổng hợp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 255k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_135 - Học Sinh 135 (Văn) - public
('post_135', 'user_135',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 135, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như so sánh các tác phẩm văn học và kỹ năng viết bài nghị luận so sánh, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_136 - Học Sinh 136 (Sinh) - private
('post_136', 'user_136',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 136, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như vi sinh vật học và vai trò của chúng trong đời sống, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_137 - Học Sinh 137 (Toán) - public
('post_137', 'user_137',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 137, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như toán rời rạc và logic, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 3 - 5 - 7
💰 Học phí mong muốn: 265k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_138 - Học Sinh 138 (Anh) - private
('post_138', 'user_138',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 138, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như tiếng Anh chuyên ngành công nghệ thông tin và lập trình, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 280k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_139 - Học Sinh 139 (Lý) - public
('post_139', 'user_139',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 139, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như vật lý lượng tử và các khái niệm cơ bản, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 250k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_140 - Học Sinh 140 (Hóa) - private
('post_140', 'user_140',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 140, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hóa học dược phẩm và các quá trình tổng hợp thuốc, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 260k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_141 - Học Sinh 141 (Văn) - public
('post_141', 'user_141',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 141, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như lý luận phê bình văn học và cách đánh giá tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 225k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_142 - Học Sinh 142 (Sinh) - private
('post_142', 'user_142',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 142, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học phân tử và công nghệ gen, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_143 - Học Sinh 143 (Toán) - public
('post_143', 'user_143',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 143, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như lý thuyết nhóm và ứng dụng trong hình học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 275k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_144 - Học Sinh 144 (Anh) - private
('post_144', 'user_144',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 144, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như tiếng Anh chuyên ngành kế toán và tài chính, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 290k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_145 - Học Sinh 145 (Lý) - public
('post_145', 'user_145',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 145, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như vật lý các hạt cơ bản và vũ trụ học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 3 - 5 - 7
💰 Học phí mong muốn: 255k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_146 - Học Sinh 146 (Hóa) - private
('post_146', 'user_146',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 146, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hóa học môi trường và các phương pháp xử lý ô nhiễm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 265k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_147 - Học Sinh 147 (Văn) - public
('post_147', 'user_147',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 147, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như văn học hiện đại và các tác giả tiêu biểu, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_148 - Học Sinh 148 (Sinh) - private
('post_148', 'user_148',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 148, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học tế bào và cơ chế điều hòa gen, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_149 - Học Sinh 149 (Toán) - public
('post_149', 'user_149',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 149, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như giải tích phức và các hàm phức, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 285k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_150 - Học Sinh 150 (Anh) - private
('post_150', 'user_150',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 150, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như tiếng Anh chuyên ngành marketing và truyền thông, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 295k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_151 - Học Sinh 151 (Lý) - public
('post_151', 'user_151',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 151, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như vật lý hạt nhân và các ứng dụng trong y học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 260k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_152 - Học Sinh 152 (Hóa) - private
('post_152', 'user_152',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 152, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hóa học polyme và công nghệ sản xuất vật liệu, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 270k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_153 - Học Sinh 153 (Văn) - public
('post_153', 'user_153',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 153, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như văn học cách mạng và các tác phẩm tiêu biểu, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 3 - 5 - 7
💰 Học phí mong muốn: 235k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_154 - Học Sinh 154 (Sinh) - private
('post_154', 'user_154',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 154, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học vi sinh vật và các phương pháp nuôi cấy, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_155 - Học Sinh 155 (Toán) - public
('post_155', 'user_155',
'📌 CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 155, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như toán học tài chính và mô hình hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 290k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_156 - Học Sinh 156 (Anh) - private
('post_156', 'user_156',
'📌 CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 156, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như tiếng Anh chuyên ngành luật và các thuật ngữ pháp lý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 300k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_157 - Học Sinh 157 (Lý) - public
('post_157', 'user_157',
'📌 CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 157, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện tử học và vi mạch, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào sáng thứ 2 - 4 - 6
💰 Học phí mong muốn: 265k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_158 - Học Sinh 158 (Hóa) - private
('post_158', 'user_158',
'📌 CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 158, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như hóa học thực phẩm và các phụ gia, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi chiều trong tuần
💰 Học phí mong muốn: 275k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private'),

-- post_159 - Học Sinh 159 (Văn) - public
('post_159', 'user_159',
'📌 CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 159, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như văn học trẻ em và các thể loại văn học thiếu nhi, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào các buổi tối trong tuần
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'public'),

-- post_160 - Học Sinh 160 (Sinh) - private
('post_160', 'user_160',
'📌 CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN
Em là Học Sinh 160, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như sinh học bảo tồn và đa dạng sinh học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.
Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến độ
🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 225k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.
Mong được thầy cô đồng hành ạ.', 'private');

