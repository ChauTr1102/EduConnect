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
  ('user_020','phuonggv','hashed_pw_20','Nguyễn Phương','1992-08-03','Female','phuong@gmail.com','Nam Từ Liêm, Hà Nội'),
  ('user_021','hs_021','hashed_pw_021','Học Sinh 021','2010-03-19','Female','hs21@gmail.com','Quận 1, Hà Nội'),
('user_022','hs_022','hashed_pw_022','Học Sinh 022','2008-11-16','Female','hs22@gmail.com','Quận 12, Hà Nội'),
('user_023','hs_023','hashed_pw_023','Học Sinh 023','2009-12-14','Male','hs23@gmail.com','Quận 11, Hà Nội'),
('user_024','hs_024','hashed_pw_024','Học Sinh 024','2008-06-05','Female','hs24@gmail.com','Quận 2, Hà Nội'),
('user_025','hs_025','hashed_pw_025','Học Sinh 025','2009-06-06','Female','hs25@gmail.com','Quận 2, Hà Nội'),
('user_026','hs_026','hashed_pw_026','Học Sinh 026','2009-10-11','Male','hs26@gmail.com','Quận 11, Hà Nội'),
('user_027','hs_027','hashed_pw_027','Học Sinh 027','2007-09-29','Male','hs27@gmail.com','Quận 7, Hà Nội'),
('user_028','hs_028','hashed_pw_028','Học Sinh 028','2009-09-25','Female','hs28@gmail.com','Quận 11, Hà Nội'),
('user_029','hs_029','hashed_pw_029','Học Sinh 029','2009-08-29','Female','hs29@gmail.com','Quận 4, Hà Nội'),
('user_030','hs_030','hashed_pw_030','Học Sinh 030','2009-10-17','Female','hs30@gmail.com','Quận 5, Hà Nội'),
('user_031','hs_031','hashed_pw_031','Học Sinh 031','2010-05-08','Male','hs31@gmail.com','Quận 2, Hà Nội'),
('user_032','hs_032','hashed_pw_032','Học Sinh 032','2008-09-09','Male','hs32@gmail.com','Quận 11, Hà Nội'),
('user_033','hs_033','hashed_pw_033','Học Sinh 033','2009-12-19','Male','hs33@gmail.com','Quận 6, Hà Nội'),
('user_034','hs_034','hashed_pw_034','Học Sinh 034','2009-11-18','Male','hs34@gmail.com','Quận 9, Hà Nội'),
('user_035','hs_035','hashed_pw_035','Học Sinh 035','2010-01-09','Male','hs35@gmail.com','Quận 1, Hà Nội'),
('user_036','hs_036','hashed_pw_036','Học Sinh 036','2008-05-30','Female','hs36@gmail.com','Quận 6, Hà Nội'),
('user_037','hs_037','hashed_pw_037','Học Sinh 037','2009-04-27','Male','hs37@gmail.com','Quận 9, Hà Nội'),
('user_038','hs_038','hashed_pw_038','Học Sinh 038','2009-11-12','Male','hs38@gmail.com','Quận 3, Hà Nội'),
('user_039','hs_039','hashed_pw_039','Học Sinh 039','2008-04-20','Female','hs39@gmail.com','Quận 12, Hà Nội'),
('user_040','hs_040','hashed_pw_040','Học Sinh 040','2007-05-14','Male','hs40@gmail.com','Quận 12, Hà Nội'),
('user_041','hs_041','hashed_pw_041','Học Sinh 041','2009-09-05','Male','hs41@gmail.com','Quận 7, Hà Nội'),
('user_042','hs_042','hashed_pw_042','Học Sinh 042','2010-03-01','Female','hs42@gmail.com','Quận 10, Hà Nội'),
('user_043','hs_043','hashed_pw_043','Học Sinh 043','2008-10-26','Female','hs43@gmail.com','Quận 2, Hà Nội'),
('user_044','hs_044','hashed_pw_044','Học Sinh 044','2008-09-02','Female','hs44@gmail.com','Quận 8, Hà Nội'),
('user_045','hs_045','hashed_pw_045','Học Sinh 045','2010-01-12','Male','hs45@gmail.com','Quận 7, Hà Nội'),
('user_046','hs_046','hashed_pw_046','Học Sinh 046','2009-06-19','Male','hs46@gmail.com','Quận 6, Hà Nội'),
('user_047','hs_047','hashed_pw_047','Học Sinh 047','2010-05-02','Male','hs47@gmail.com','Quận 1, Hà Nội'),
('user_048','hs_048','hashed_pw_048','Học Sinh 048','2007-12-03','Female','hs48@gmail.com','Quận 9, Hà Nội'),
('user_049','hs_049','hashed_pw_049','Học Sinh 049','2009-01-03','Male','hs49@gmail.com','Quận 1, Hà Nội'),
('user_050','hs_050','hashed_pw_050','Học Sinh 050','2008-12-02','Female','hs50@gmail.com','Quận 7, Hà Nội'),
('user_051','hs_051','hashed_pw_051','Học Sinh 051','2010-02-06','Female','hs51@gmail.com','Quận 7, Hà Nội'),
('user_052','hs_052','hashed_pw_052','Học Sinh 052','2008-07-10','Female','hs52@gmail.com','Quận 10, Hà Nội'),
('user_053','hs_053','hashed_pw_053','Học Sinh 053','2010-03-30','Female','hs53@gmail.com','Quận 6, Hà Nội'),
('user_054','hs_054','hashed_pw_054','Học Sinh 054','2010-04-14','Male','hs54@gmail.com','Quận 8, Hà Nội'),
('user_055','hs_055','hashed_pw_055','Học Sinh 055','2007-07-21','Female','hs55@gmail.com','Quận 9, Hà Nội'),
('user_056','hs_056','hashed_pw_056','Học Sinh 056','2007-05-18','Female','hs56@gmail.com','Quận 8, Hà Nội'),
('user_057','hs_057','hashed_pw_057','Học Sinh 057','2009-04-19','Female','hs57@gmail.com','Quận 10, Hà Nội'),
('user_058','hs_058','hashed_pw_058','Học Sinh 058','2007-11-13','Female','hs58@gmail.com','Quận 3, Hà Nội'),
('user_059','hs_059','hashed_pw_059','Học Sinh 059','2010-03-15','Male','hs59@gmail.com','Quận 6, Hà Nội'),
('user_060','hs_060','hashed_pw_060','Học Sinh 060','2009-10-11','Female','hs60@gmail.com','Quận 12, Hà Nội'),
('user_061','hs_061','hashed_pw_061','Học Sinh 061','2009-05-15','Male','hs61@gmail.com','Quận 3, Hà Nội'),
('user_062','hs_062','hashed_pw_062','Học Sinh 062','2009-12-14','Female','hs62@gmail.com','Quận 12, Hà Nội'),
('user_063','hs_063','hashed_pw_063','Học Sinh 063','2009-10-01','Male','hs63@gmail.com','Quận 6, Hà Nội'),
('user_064','hs_064','hashed_pw_064','Học Sinh 064','2010-02-15','Female','hs64@gmail.com','Quận 6, Hà Nội'),
('user_065','hs_065','hashed_pw_065','Học Sinh 065','2010-03-26','Male','hs65@gmail.com','Quận 9, Hà Nội'),
('user_066','hs_066','hashed_pw_066','Học Sinh 066','2009-04-21','Female','hs66@gmail.com','Quận 11, Hà Nội'),
('user_067','hs_067','hashed_pw_067','Học Sinh 067','2008-08-17','Female','hs67@gmail.com','Quận 5, Hà Nội'),
('user_068','hs_068','hashed_pw_068','Học Sinh 068','2010-04-18','Male','hs68@gmail.com','Quận 4, Hà Nội'),
('user_069','hs_069','hashed_pw_069','Học Sinh 069','2007-06-18','Female','hs69@gmail.com','Quận 9, Hà Nội'),
('user_070','hs_070','hashed_pw_070','Học Sinh 070','2008-04-11','Male','hs70@gmail.com','Quận 6, Hà Nội'),
('user_071','hs_071','hashed_pw_071','Học Sinh 071','2009-06-04','Female','hs71@gmail.com','Quận 10, Hà Nội'),
('user_072','hs_072','hashed_pw_072','Học Sinh 072','2007-08-12','Female','hs72@gmail.com','Quận 8, Hà Nội'),
('user_073','hs_073','hashed_pw_073','Học Sinh 073','2008-03-30','Male','hs73@gmail.com','Quận 5, Hà Nội'),
('user_074','hs_074','hashed_pw_074','Học Sinh 074','2009-06-14','Female','hs74@gmail.com','Quận 4, Hà Nội'),
('user_075','hs_075','hashed_pw_075','Học Sinh 075','2008-01-01','Female','hs75@gmail.com','Quận 3, Hà Nội'),
('user_076','hs_076','hashed_pw_076','Học Sinh 076','2008-11-04','Female','hs76@gmail.com','Quận 5, Hà Nội'),
('user_077','hs_077','hashed_pw_077','Học Sinh 077','2008-11-09','Female','hs77@gmail.com','Quận 5, Hà Nội'),
('user_078','hs_078','hashed_pw_078','Học Sinh 078','2007-08-10','Female','hs78@gmail.com','Quận 10, Hà Nội'),
('user_079','hs_079','hashed_pw_079','Học Sinh 079','2008-03-22','Female','hs79@gmail.com','Quận 6, Hà Nội'),
('user_080','hs_080','hashed_pw_080','Học Sinh 080','2007-09-14','Female','hs80@gmail.com','Quận 10, Hà Nội'),
('user_081','hs_081','hashed_pw_081','Học Sinh 081','2009-09-01','Female','hs81@gmail.com','Quận 6, Hà Nội'),
('user_082','hs_082','hashed_pw_082','Học Sinh 082','2007-12-27','Male','hs82@gmail.com','Quận 11, Hà Nội'),
('user_083','hs_083','hashed_pw_083','Học Sinh 083','2008-06-14','Male','hs83@gmail.com','Quận 7, Hà Nội'),
('user_084','hs_084','hashed_pw_084','Học Sinh 084','2008-03-05','Male','hs84@gmail.com','Quận 5, Hà Nội'),
('user_085','hs_085','hashed_pw_085','Học Sinh 085','2009-10-18','Female','hs85@gmail.com','Quận 9, Hà Nội'),
('user_086','hs_086','hashed_pw_086','Học Sinh 086','2008-12-21','Male','hs86@gmail.com','Quận 10, Hà Nội'),
('user_087','hs_087','hashed_pw_087','Học Sinh 087','2007-06-08','Male','hs87@gmail.com','Quận 4, Hà Nội'),
('user_088','hs_088','hashed_pw_088','Học Sinh 088','2008-05-07','Male','hs88@gmail.com','Quận 3, Hà Nội'),
('user_089','hs_089','hashed_pw_089','Học Sinh 089','2008-05-23','Male','hs89@gmail.com','Quận 2, Hà Nội'),
('user_090','hs_090','hashed_pw_090','Học Sinh 090','2010-04-24','Female','hs90@gmail.com','Quận 3, Hà Nội'),
('user_091','hs_091','hashed_pw_091','Học Sinh 091','2007-11-24','Male','hs91@gmail.com','Quận 4, Hà Nội'),
('user_092','hs_092','hashed_pw_092','Học Sinh 092','2008-06-26','Male','hs92@gmail.com','Quận 2, Hà Nội'),
('user_093','hs_093','hashed_pw_093','Học Sinh 093','2010-02-26','Male','hs93@gmail.com','Quận 7, Hà Nội'),
('user_094','hs_094','hashed_pw_094','Học Sinh 094','2007-06-27','Female','hs94@gmail.com','Quận 8, Hà Nội'),
('user_095','hs_095','hashed_pw_095','Học Sinh 095','2008-03-02','Female','hs95@gmail.com','Quận 4, Hà Nội'),
('user_096','hs_096','hashed_pw_096','Học Sinh 096','2009-11-09','Female','hs96@gmail.com','Quận 5, Hà Nội'),
('user_097','hs_097','hashed_pw_097','Học Sinh 097','2009-04-05','Female','hs97@gmail.com','Quận 9, Hà Nội'),
('user_098','hs_098','hashed_pw_098','Học Sinh 098','2009-05-11','Male','hs98@gmail.com','Quận 12, Hà Nội'),
('user_099','hs_099','hashed_pw_099','Học Sinh 099','2007-06-02','Male','hs99@gmail.com','Quận 1, Hà Nội'),
('user_100','hs_100','hashed_pw_100','Học Sinh 100','2007-06-04','Female','hs100@gmail.com','Quận 4, Hà Nội'),
('user_101','hs_101','hashed_pw_101','Học Sinh 101','2009-08-28','Male','hs101@gmail.com','Quận 12, Hà Nội'),
('user_102','hs_102','hashed_pw_102','Học Sinh 102','2007-07-07','Male','hs102@gmail.com','Quận 6, Hà Nội'),
('user_103','hs_103','hashed_pw_103','Học Sinh 103','2009-02-17','Female','hs103@gmail.com','Quận 3, Hà Nội'),
('user_104','hs_104','hashed_pw_104','Học Sinh 104','2009-11-17','Female','hs104@gmail.com','Quận 5, Hà Nội'),
('user_105','hs_105','hashed_pw_105','Học Sinh 105','2010-04-22','Female','hs105@gmail.com','Quận 6, Hà Nội'),
('user_106','hs_106','hashed_pw_106','Học Sinh 106','2009-11-07','Female','hs106@gmail.com','Quận 3, Hà Nội'),
('user_107','hs_107','hashed_pw_107','Học Sinh 107','2010-03-19','Female','hs107@gmail.com','Quận 3, Hà Nội'),
('user_108','hs_108','hashed_pw_108','Học Sinh 108','2007-11-09','Female','hs108@gmail.com','Quận 10, Hà Nội'),
('user_109','hs_109','hashed_pw_109','Học Sinh 109','2009-02-22','Male','hs109@gmail.com','Quận 12, Hà Nội'),
('user_110','hs_110','hashed_pw_110','Học Sinh 110','2008-02-20','Male','hs110@gmail.com','Quận 11, Hà Nội'),
('user_111','hs_111','hashed_pw_111','Học Sinh 111','2010-02-21','Male','hs111@gmail.com','Quận 12, Hà Nội'),
('user_112','hs_112','hashed_pw_112','Học Sinh 112','2010-01-09','Female','hs112@gmail.com','Quận 11, Hà Nội'),
('user_113','hs_113','hashed_pw_113','Học Sinh 113','2008-05-13','Male','hs113@gmail.com','Quận 11, Hà Nội'),
('user_114','hs_114','hashed_pw_114','Học Sinh 114','2009-08-22','Male','hs114@gmail.com','Quận 10, Hà Nội'),
('user_115','hs_115','hashed_pw_115','Học Sinh 115','2008-12-23','Female','hs115@gmail.com','Quận 12, Hà Nội'),
('user_116','hs_116','hashed_pw_116','Học Sinh 116','2007-10-09','Male','hs116@gmail.com','Quận 6, Hà Nội'),
('user_117','hs_117','hashed_pw_117','Học Sinh 117','2010-04-29','Female','hs117@gmail.com','Quận 3, Hà Nội'),
('user_118','hs_118','hashed_pw_118','Học Sinh 118','2007-06-22','Female','hs118@gmail.com','Quận 7, Hà Nội'),
('user_119','hs_119','hashed_pw_119','Học Sinh 119','2009-04-03','Male','hs119@gmail.com','Quận 2, Hà Nội'),
('user_120','hs_120','hashed_pw_120','Học Sinh 120','2009-04-29','Female','hs120@gmail.com','Quận 11, Hà Nội'),
('user_121','hs_121','hashed_pw_121','Học Sinh 121','2009-10-20','Male','hs121@gmail.com','Quận 2, Hà Nội'),
('user_122','hs_122','hashed_pw_122','Học Sinh 122','2009-12-07','Female','hs122@gmail.com','Quận 2, Hà Nội'),
('user_123','hs_123','hashed_pw_123','Học Sinh 123','2008-03-13','Female','hs123@gmail.com','Quận 5, Hà Nội'),
('user_124','hs_124','hashed_pw_124','Học Sinh 124','2010-04-11','Male','hs124@gmail.com','Quận 3, Hà Nội'),
('user_125','hs_125','hashed_pw_125','Học Sinh 125','2007-06-28','Female','hs125@gmail.com','Quận 2, Hà Nội'),
('user_126','hs_126','hashed_pw_126','Học Sinh 126','2009-08-15','Male','hs126@gmail.com','Quận 9, Hà Nội'),
('user_127','hs_127','hashed_pw_127','Học Sinh 127','2007-08-12','Female','hs127@gmail.com','Quận 3, Hà Nội'),
('user_128','hs_128','hashed_pw_128','Học Sinh 128','2009-10-09','Female','hs128@gmail.com','Quận 3, Hà Nội'),
('user_129','hs_129','hashed_pw_129','Học Sinh 129','2009-09-14','Female','hs129@gmail.com','Quận 3, Hà Nội'),
('user_130','hs_130','hashed_pw_130','Học Sinh 130','2010-04-18','Male','hs130@gmail.com','Quận 12, Hà Nội'),
('user_131','hs_131','hashed_pw_131','Học Sinh 131','2010-02-02','Male','hs131@gmail.com','Quận 9, Hà Nội'),
('user_132','hs_132','hashed_pw_132','Học Sinh 132','2009-03-06','Male','hs132@gmail.com','Quận 11, Hà Nội'),
('user_133','hs_133','hashed_pw_133','Học Sinh 133','2008-08-13','Male','hs133@gmail.com','Quận 5, Hà Nội'),
('user_134','hs_134','hashed_pw_134','Học Sinh 134','2010-02-11','Female','hs134@gmail.com','Quận 12, Hà Nội'),
('user_135','hs_135','hashed_pw_135','Học Sinh 135','2009-09-28','Female','hs135@gmail.com','Quận 6, Hà Nội'),
('user_136','hs_136','hashed_pw_136','Học Sinh 136','2010-04-30','Male','hs136@gmail.com','Quận 10, Hà Nội'),
('user_137','hs_137','hashed_pw_137','Học Sinh 137','2009-05-22','Female','hs137@gmail.com','Quận 10, Hà Nội'),
('user_138','hs_138','hashed_pw_138','Học Sinh 138','2007-12-08','Female','hs138@gmail.com','Quận 4, Hà Nội'),
('user_139','hs_139','hashed_pw_139','Học Sinh 139','2007-10-22','Female','hs139@gmail.com','Quận 9, Hà Nội'),
('user_140','hs_140','hashed_pw_140','Học Sinh 140','2008-12-07','Male','hs140@gmail.com','Quận 9, Hà Nội'),
('user_141','hs_141','hashed_pw_141','Học Sinh 141','2009-02-18','Male','hs141@gmail.com','Quận 1, Hà Nội'),
('user_142','hs_142','hashed_pw_142','Học Sinh 142','2008-02-16','Female','hs142@gmail.com','Quận 5, Hà Nội'),
('user_143','hs_143','hashed_pw_143','Học Sinh 143','2009-01-26','Male','hs143@gmail.com','Quận 12, Hà Nội'),
('user_144','hs_144','hashed_pw_144','Học Sinh 144','2010-01-10','Male','hs144@gmail.com','Quận 2, Hà Nội'),
('user_145','hs_145','hashed_pw_145','Học Sinh 145','2008-04-22','Female','hs145@gmail.com','Quận 11, Hà Nội'),
('user_146','hs_146','hashed_pw_146','Học Sinh 146','2010-05-09','Male','hs146@gmail.com','Quận 10, Hà Nội'),
('user_147','hs_147','hashed_pw_147','Học Sinh 147','2009-04-30','Male','hs147@gmail.com','Quận 9, Hà Nội'),
('user_148','hs_148','hashed_pw_148','Học Sinh 148','2008-01-30','Female','hs148@gmail.com','Quận 2, Hà Nội'),
('user_149','hs_149','hashed_pw_149','Học Sinh 149','2007-06-18','Female','hs149@gmail.com','Quận 7, Hà Nội'),
('user_150','hs_150','hashed_pw_150','Học Sinh 150','2008-11-08','Female','hs150@gmail.com','Quận 10, Hà Nội'),
('user_151','hs_151','hashed_pw_151','Học Sinh 151','2007-05-15','Female','hs151@gmail.com','Quận 6, Hà Nội'),
('user_152','hs_152','hashed_pw_152','Học Sinh 152','2009-03-14','Male','hs152@gmail.com','Quận 4, Hà Nội'),
('user_153','hs_153','hashed_pw_153','Học Sinh 153','2009-08-23','Male','hs153@gmail.com','Quận 12, Hà Nội'),
('user_154','hs_154','hashed_pw_154','Học Sinh 154','2008-09-21','Male','hs154@gmail.com','Quận 7, Hà Nội'),
('user_155','hs_155','hashed_pw_155','Học Sinh 155','2008-04-15','Female','hs155@gmail.com','Quận 12, Hà Nội'),
('user_156','hs_156','hashed_pw_156','Học Sinh 156','2009-04-19','Female','hs156@gmail.com','Quận 9, Hà Nội'),
('user_157','hs_157','hashed_pw_157','Học Sinh 157','2008-08-29','Female','hs157@gmail.com','Quận 12, Hà Nội'),
('user_158','hs_158','hashed_pw_158','Học Sinh 158','2008-09-12','Female','hs158@gmail.com','Quận 11, Hà Nội'),
('user_159','hs_159','hashed_pw_159','Học Sinh 159','2009-12-18','Male','hs159@gmail.com','Quận 9, Hà Nội'),
('user_160','hs_160','hashed_pw_160','Học Sinh 160','2007-06-16','Male','hs160@gmail.com','Quận 5, Hà Nội'),
('user_161','hs_161','hashed_pw_161','Học Sinh 161','2008-03-31','Female','hs161@gmail.com','Quận 9, Hà Nội'),
('user_162','hs_162','hashed_pw_162','Học Sinh 162','2010-01-15','Male','hs162@gmail.com','Quận 2, Hà Nội'),
('user_163','hs_163','hashed_pw_163','Học Sinh 163','2008-09-04','Male','hs163@gmail.com','Quận 6, Hà Nội'),
('user_164','hs_164','hashed_pw_164','Học Sinh 164','2009-05-09','Female','hs164@gmail.com','Quận 4, Hà Nội'),
('user_165','hs_165','hashed_pw_165','Học Sinh 165','2009-12-21','Male','hs165@gmail.com','Quận 3, Hà Nội'),
('user_166','hs_166','hashed_pw_166','Học Sinh 166','2007-06-15','Female','hs166@gmail.com','Quận 7, Hà Nội'),
('user_167','hs_167','hashed_pw_167','Học Sinh 167','2008-05-03','Male','hs167@gmail.com','Quận 3, Hà Nội'),
('user_168','hs_168','hashed_pw_168','Học Sinh 168','2007-08-30','Male','hs168@gmail.com','Quận 11, Hà Nội'),
('user_169','hs_169','hashed_pw_169','Học Sinh 169','2008-07-04','Female','hs169@gmail.com','Quận 12, Hà Nội'),
('user_170','hs_170','hashed_pw_170','Học Sinh 170','2009-10-21','Female','hs170@gmail.com','Quận 7, Hà Nội'),
('user_171','gv_171','hashed_pw_171','Giáo Viên 171','1995-11-22','Female','gv171@gmail.com','Quận 5, Hà Nội'),
('user_172','gv_172','hashed_pw_172','Giáo Viên 172','1989-06-26','Female','gv172@gmail.com','Quận 1, Hà Nội'),
('user_173','gv_173','hashed_pw_173','Giáo Viên 173','1996-12-03','Male','gv173@gmail.com','Quận 6, Hà Nội'),
('user_174','gv_174','hashed_pw_174','Giáo Viên 174','1999-02-01','Female','gv174@gmail.com','Quận 2, Hà Nội'),
('user_175','gv_175','hashed_pw_175','Giáo Viên 175','1994-04-11','Female','gv175@gmail.com','Quận 5, Hà Nội'),
('user_176','gv_176','hashed_pw_176','Giáo Viên 176','1981-12-31','Male','gv176@gmail.com','Quận 12, Hà Nội'),
('user_177','gv_177','hashed_pw_177','Giáo Viên 177','1999-12-19','Male','gv177@gmail.com','Quận 9, Hà Nội'),
('user_178','gv_178','hashed_pw_178','Giáo Viên 178','1990-01-14','Female','gv178@gmail.com','Quận 7, Hà Nội'),
('user_179','gv_179','hashed_pw_179','Giáo Viên 179','1986-07-27','Female','gv179@gmail.com','Quận 3, Hà Nội'),
('user_180','gv_180','hashed_pw_180','Giáo Viên 180','1985-06-08','Male','gv180@gmail.com','Quận 3, Hà Nội'),
('user_181','gv_181','hashed_pw_181','Giáo Viên 181','1980-11-05','Male','gv181@gmail.com','Quận 1, Hà Nội'),
('user_182','gv_182','hashed_pw_182','Giáo Viên 182','1986-09-22','Male','gv182@gmail.com','Quận 12, Hà Nội'),
('user_183','gv_183','hashed_pw_183','Giáo Viên 183','1992-04-12','Female','gv183@gmail.com','Quận 1, Hà Nội'),
('user_184','gv_184','hashed_pw_184','Giáo Viên 184','1993-03-27','Female','gv184@gmail.com','Quận 5, Hà Nội'),
('user_185','gv_185','hashed_pw_185','Giáo Viên 185','1988-12-17','Male','gv185@gmail.com','Quận 9, Hà Nội'),
('user_186','gv_186','hashed_pw_186','Giáo Viên 186','1996-08-27','Female','gv186@gmail.com','Quận 8, Hà Nội'),
('user_187','gv_187','hashed_pw_187','Giáo Viên 187','1986-04-18','Male','gv187@gmail.com','Quận 2, Hà Nội'),
('user_188','gv_188','hashed_pw_188','Giáo Viên 188','1992-05-01','Female','gv188@gmail.com','Quận 1, Hà Nội'),
('user_189','gv_189','hashed_pw_189','Giáo Viên 189','1985-09-30','Female','gv189@gmail.com','Quận 10, Hà Nội'),
('user_190','gv_190','hashed_pw_190','Giáo Viên 190','1985-09-03','Male','gv190@gmail.com','Quận 7, Hà Nội'),
('user_191','gv_191','hashed_pw_191','Giáo Viên 191','1999-03-11','Female','gv191@gmail.com','Quận 7, Hà Nội'),
('user_192','gv_192','hashed_pw_192','Giáo Viên 192','1989-07-25','Male','gv192@gmail.com','Quận 7, Hà Nội'),
('user_193','gv_193','hashed_pw_193','Giáo Viên 193','1986-11-02','Male','gv193@gmail.com','Quận 3, Hà Nội'),
('user_194','gv_194','hashed_pw_194','Giáo Viên 194','1982-09-07','Male','gv194@gmail.com','Quận 5, Hà Nội'),
('user_195','gv_195','hashed_pw_195','Giáo Viên 195','1991-08-10','Female','gv195@gmail.com','Quận 12, Hà Nội'),
('user_196','gv_196','hashed_pw_196','Giáo Viên 196','1985-11-27','Male','gv196@gmail.com','Quận 5, Hà Nội'),
('user_197','gv_197','hashed_pw_197','Giáo Viên 197','1982-03-16','Male','gv197@gmail.com','Quận 2, Hà Nội'),
('user_198','gv_198','hashed_pw_198','Giáo Viên 198','1993-11-24','Male','gv198@gmail.com','Quận 1, Hà Nội'),
('user_199','gv_199','hashed_pw_199','Giáo Viên 199','2000-04-28','Male','gv199@gmail.com','Quận 2, Hà Nội'),
('user_200','gv_200','hashed_pw_200','Giáo Viên 200','1981-08-30','Female','gv200@gmail.com','Quận 2, Hà Nội'),
('user_201','gv_201','hashed_pw_201','Giáo Viên 201','1994-04-15','Female','gv201@gmail.com','Quận 5, Hà Nội'),
('user_202','gv_202','hashed_pw_202','Giáo Viên 202','1997-06-28','Male','gv202@gmail.com','Quận 9, Hà Nội'),
('user_203','gv_203','hashed_pw_203','Giáo Viên 203','2000-01-26','Male','gv203@gmail.com','Quận 1, Hà Nội'),
('user_204','gv_204','hashed_pw_204','Giáo Viên 204','1982-05-12','Female','gv204@gmail.com','Quận 11, Hà Nội'),
('user_205','gv_205','hashed_pw_205','Giáo Viên 205','1982-06-16','Male','gv205@gmail.com','Quận 10, Hà Nội'),
('user_206','gv_206','hashed_pw_206','Giáo Viên 206','1996-06-26','Female','gv206@gmail.com','Quận 8, Hà Nội'),
('user_207','gv_207','hashed_pw_207','Giáo Viên 207','1991-08-02','Female','gv207@gmail.com','Quận 3, Hà Nội'),
('user_208','gv_208','hashed_pw_208','Giáo Viên 208','1985-03-10','Male','gv208@gmail.com','Quận 1, Hà Nội'),
('user_209','gv_209','hashed_pw_209','Giáo Viên 209','1981-11-20','Male','gv209@gmail.com','Quận 11, Hà Nội'),
('user_210','gv_210','hashed_pw_210','Giáo Viên 210','1985-09-11','Male','gv210@gmail.com','Quận 9, Hà Nội'),
('user_211','gv_211','hashed_pw_211','Giáo Viên 211','1988-11-09','Male','gv211@gmail.com','Quận 11, Hà Nội'),
('user_212','gv_212','hashed_pw_212','Giáo Viên 212','1980-07-03','Female','gv212@gmail.com','Quận 10, Hà Nội'),
('user_213','gv_213','hashed_pw_213','Giáo Viên 213','1982-02-11','Female','gv213@gmail.com','Quận 11, Hà Nội'),
('user_214','gv_214','hashed_pw_214','Giáo Viên 214','1984-04-02','Male','gv214@gmail.com','Quận 4, Hà Nội'),
('user_215','gv_215','hashed_pw_215','Giáo Viên 215','1990-07-17','Female','gv215@gmail.com','Quận 10, Hà Nội'),
('user_216','gv_216','hashed_pw_216','Giáo Viên 216','1986-10-15','Male','gv216@gmail.com','Quận 3, Hà Nội'),
('user_217','gv_217','hashed_pw_217','Giáo Viên 217','1987-10-23','Male','gv217@gmail.com','Quận 4, Hà Nội'),
('user_218','gv_218','hashed_pw_218','Giáo Viên 218','2000-05-09','Male','gv218@gmail.com','Quận 7, Hà Nội'),
('user_219','gv_219','hashed_pw_219','Giáo Viên 219','1997-09-11','Female','gv219@gmail.com','Quận 8, Hà Nội'),
('user_220','gv_220','hashed_pw_220','Giáo Viên 220','1992-02-15','Female','gv220@gmail.com','Quận 5, Hà Nội')
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
   'Hướng dẫn học sinh viết theo khung ý rõ ràng, giúp nâng cao vốn từ. Tập trung luyện viết theo chủ đề xã hội và sáng tạo. Có phản biện nhóm để tăng kỹ năng lập luận.','Văn thơ'),
   ('user_171','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Tiến sĩ chuyên ngành','7 năm giảng dạy',
   'Tạo không khí học tích cực, khích lệ và không áp lực.','chụp ảnh, đi phượt'),
('user_172','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Tiến sĩ chuyên ngành','14 năm giảng dạy',
'Tạo không khí học tích cực, khích lệ và không áp lực.','nấu ăn, đi bộ'),
('user_173','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Thạc sĩ chuyên ngành','4 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','thiết kế bài giảng, vẽ tay'),
('user_174','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Tiến sĩ chuyên ngành','5 năm giảng dạy',
'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ.','chụp ảnh, đi phượt'),
('user_175','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Thạc sĩ chuyên ngành','15 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_176','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Thạc sĩ chuyên ngành','9 năm giảng dạy',
'Tạo không khí học tích cực, khích lệ và không áp lực.','thiết kế bài giảng, vẽ tay'),
('user_177','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Thạc sĩ chuyên ngành','15 năm giảng dạy',
'Tạo không khí học tích cực, khích lệ và không áp lực.','chụp ảnh, đi phượt'),
('user_178','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Tiến sĩ chuyên ngành','15 năm giảng dạy',
'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ.','nấu ăn, đi bộ'),
('user_179','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Tiến sĩ chuyên ngành','8 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','trồng cây, nghiên cứu giáo án'),
('user_180','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Thạc sĩ chuyên ngành','13 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_181','Tôi thích kết hợp công nghệ vào giảng dạy để bài học sinh động, dễ hiểu.','Tiến sĩ chuyên ngành','7 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','thiết kế bài giảng, vẽ tay'),
('user_182','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Tiến sĩ chuyên ngành','7 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','thiết kế bài giảng, vẽ tay'),
('user_183','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Tiến sĩ chuyên ngành','13 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_184','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Tiến sĩ chuyên ngành','11 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','chụp ảnh, đi phượt'),
('user_185','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Cử nhân chuyên ngành','7 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','thiết kế bài giảng, vẽ tay'),
('user_186','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Tiến sĩ chuyên ngành','15 năm giảng dạy',
'Tạo không khí học tích cực, khích lệ và không áp lực.','thiết kế bài giảng, vẽ tay'),
('user_187','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Tiến sĩ chuyên ngành','13 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','trồng cây, nghiên cứu giáo án'),
('user_188','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Thạc sĩ chuyên ngành','14 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','thiết kế bài giảng, vẽ tay'),
('user_189','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Cử nhân chuyên ngành','3 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','nấu ăn, đi bộ'),
('user_190','Tôi thích kết hợp công nghệ vào giảng dạy để bài học sinh động, dễ hiểu.','Tiến sĩ chuyên ngành','6 năm giảng dạy',
'Tạo không khí học tích cực, khích lệ và không áp lực.','chụp ảnh, đi phượt'),
('user_191','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Tiến sĩ chuyên ngành','11 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','nấu ăn, đi bộ'),
('user_192','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Cử nhân chuyên ngành','3 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','chụp ảnh, đi phượt'),
('user_193','Tôi thích kết hợp công nghệ vào giảng dạy để bài học sinh động, dễ hiểu.','Tiến sĩ chuyên ngành','12 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_194','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Tiến sĩ chuyên ngành','7 năm giảng dạy',
'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ.','chụp ảnh, đi phượt'),
('user_195','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Cử nhân chuyên ngành','6 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','thiết kế bài giảng, vẽ tay'),
('user_196','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Tiến sĩ chuyên ngành','9 năm giảng dạy',
'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ.','chụp ảnh, đi phượt'),
('user_197','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Tiến sĩ chuyên ngành','8 năm giảng dạy',
'Tạo không khí học tích cực, khích lệ và không áp lực.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_198','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Thạc sĩ chuyên ngành','8 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','thiết kế bài giảng, vẽ tay'),
('user_199','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Cử nhân chuyên ngành','7 năm giảng dạy',
'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ.','trồng cây, nghiên cứu giáo án'),
('user_200','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Thạc sĩ chuyên ngành','6 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','nấu ăn, đi bộ'),
('user_201','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Cử nhân chuyên ngành','3 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','nấu ăn, đi bộ'),
('user_202','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Tiến sĩ chuyên ngành','14 năm giảng dạy',
'Tạo không khí học tích cực, khích lệ và không áp lực.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_203','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Tiến sĩ chuyên ngành','10 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','thiết kế bài giảng, vẽ tay'),
('user_204','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Tiến sĩ chuyên ngành','12 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','thiết kế bài giảng, vẽ tay'),
('user_205','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Thạc sĩ chuyên ngành','5 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','nấu ăn, đi bộ'),
('user_206','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Tiến sĩ chuyên ngành','3 năm giảng dạy',
'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ.','trồng cây, nghiên cứu giáo án'),
('user_207','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Thạc sĩ chuyên ngành','4 năm giảng dạy',
'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ.','thiết kế bài giảng, vẽ tay'),
('user_208','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Thạc sĩ chuyên ngành','7 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','trồng cây, nghiên cứu giáo án'),
('user_209','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Thạc sĩ chuyên ngành','7 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','thiết kế bài giảng, vẽ tay'),
('user_210','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Thạc sĩ chuyên ngành','12 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_211','Tôi thích kết hợp công nghệ vào giảng dạy để bài học sinh động, dễ hiểu.','Thạc sĩ chuyên ngành','12 năm giảng dạy',
'Tạo không khí học tích cực, khích lệ và không áp lực.','thiết kế bài giảng, vẽ tay'),
('user_212','Với nhiều năm giảng dạy, tôi hiểu cách giúp học sinh vượt qua khó khăn.','Thạc sĩ chuyên ngành','13 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','thiết kế bài giảng, vẽ tay'),
('user_213','Tôi là giáo viên tâm huyết, luôn tìm cách đổi mới phương pháp dạy.','Cử nhân chuyên ngành','8 năm giảng dạy',
'Lấy học sinh làm trung tâm, giảng chậm, rõ và nhiều ví dụ.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_214','Tôi thích kết hợp công nghệ vào giảng dạy để bài học sinh động, dễ hiểu.','Tiến sĩ chuyên ngành','15 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','chụp ảnh, đi phượt'),
('user_215','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Tiến sĩ chuyên ngành','8 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','chụp ảnh, đi phượt'),
('user_216','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Cử nhân chuyên ngành','12 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','đọc sách chuyên ngành, nghe nhạc nhẹ'),
('user_217','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Thạc sĩ chuyên ngành','11 năm giảng dạy',
'Dạy bằng sơ đồ tư duy, hình ảnh minh họa, tạo sự trực quan.','trồng cây, nghiên cứu giáo án'),
('user_218','Tôi tin rằng mỗi học sinh đều có thể tiến bộ nếu được truyền cảm hứng đúng cách.','Cử nhân chuyên ngành','12 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','thiết kế bài giảng, vẽ tay'),
('user_219','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Tiến sĩ chuyên ngành','14 năm giảng dạy',
'Chia nhỏ bài học theo từng dạng, luyện bài theo mức độ.','trồng cây, nghiên cứu giáo án'),
('user_220','Dạy học với tôi là một hành trình đồng hành và khai phá tiềm năng học sinh.','Thạc sĩ chuyên ngành','4 năm giảng dạy',
'Luôn bắt đầu từ cơ bản và củng cố dần lên nâng cao.','đọc sách chuyên ngành, nghe nhạc nhẹ');
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
Em tin nếu được chỉ đúng cách, em sẽ có thể viết được những bài văn có hồn, có chiều sâu hơn.'),

('post_021', 'user_021', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 021, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và phân tích tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 184k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_022', 'user_022', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 022, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như dàn ý và viết đoạn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 185k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_023', 'user_023', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 023, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 219k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_024', 'user_024', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 024, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và cảm thụ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 209k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_025', 'user_025', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 025, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 209k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_026', 'user_026', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 026, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như đồ thị và cảm ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 184k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_027', 'user_027', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 027, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như ADN và di truyền, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 186k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_028', 'user_028', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 028, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và oxi hóa khử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 216k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_029', 'user_029', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 029, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hàm số và hình học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 204k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_030', 'user_030', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 030, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện xoay chiều và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_031', 'user_031', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 031, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như tích phân và bất phương trình, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 223k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_032', 'user_032', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 032, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và bảng tuần hoàn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 249k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_033', 'user_033', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 033, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học và hàm số, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 206k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_034', 'user_034', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 034, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích tác phẩm và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_035', 'user_035', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 035, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Writing và Từ vựng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 226k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_036', 'user_036', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 036, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_037', 'user_037', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 037, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 242k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_038', 'user_038', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 038, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Nói và Listening, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 245k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_039', 'user_039', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 039, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Từ vựng và Nói, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 185k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_040', 'user_040', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 040, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và viết đoạn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 206k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_041', 'user_041', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 041, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 218k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_042', 'user_042', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 042, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Writing và Từ vựng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 201k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_043', 'user_043', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 043, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 196k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_044', 'user_044', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 044, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 209k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_045', 'user_045', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 045, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như đồ thị và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 244k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_046', 'user_046', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 046, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_047', 'user_047', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 047, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_048', 'user_048', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 048, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 221k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_049', 'user_049', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 049, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Listening và Ngữ pháp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 189k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_050', 'user_050', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 050, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học và đạo hàm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 201k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_051', 'user_051', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 051, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như bảng tuần hoàn và tính chất hóa học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 244k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_052', 'user_052', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 052, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và phân tích tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 188k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_053', 'user_053', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 053, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 232k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_054', 'user_054', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 054, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như đạo hàm và hình học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 249k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_055', 'user_055', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 055, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và mạch điện, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 227k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_056', 'user_056', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 056, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 182k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_057', 'user_057', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 057, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Ngữ pháp và Từ vựng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 195k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_058', 'user_058', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 058, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như ADN và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 229k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_059', 'user_059', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 059, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như oxi hóa khử và phản ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 218k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_060', 'user_060', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 060, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 196k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_061', 'user_061', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 061, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và bảng tuần hoàn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 195k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_062', 'user_062', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 062, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Nói và Ngữ pháp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 229k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_063', 'user_063', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 063, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như ADN và di truyền, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 190k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_064', 'user_064', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 064, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 221k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_065', 'user_065', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 065, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 217k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_066', 'user_066', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 066, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 187k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_067', 'user_067', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 067, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hàm số và bất phương trình, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_068', 'user_068', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 068, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như đạo hàm và tích phân, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 183k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_069', 'user_069', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 069, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Listening và Từ vựng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_070', 'user_070', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 070, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 249k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_071', 'user_071', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 071, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như mạch điện và đồ thị, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 180k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_072', 'user_072', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 072, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như oxi hóa khử và tính chất hóa học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 233k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_073', 'user_073', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 073, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như bảng tuần hoàn và oxi hóa khử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 187k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_074', 'user_074', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 074, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như dao động và đồ thị, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 194k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_075', 'user_075', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 075, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và phân tích tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 181k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_076', 'user_076', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 076, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như bảng tuần hoàn và tính chất hóa học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 247k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_077', 'user_077', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 077, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như phản ứng và oxi hóa khử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 246k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_078', 'user_078', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 078, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Từ vựng và Nói, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 180k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_079', 'user_079', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 079, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Writing và Listening, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 199k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_080', 'user_080', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 080, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Nói và Từ vựng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 202k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_081', 'user_081', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 081, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như phản ứng và bảng tuần hoàn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 198k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_082', 'user_082', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 082, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như phản ứng và tính chất hóa học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 206k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_083', 'user_083', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 083, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hàm số và đạo hàm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 247k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_084', 'user_084', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 084, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như bảng tuần hoàn và oxi hóa khử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 226k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_085', 'user_085', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 085, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như bảng tuần hoàn và phản ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 192k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_086', 'user_086', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 086, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và phản ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 245k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_087', 'user_087', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 087, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và di truyền, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 214k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_088', 'user_088', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 088, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như phản ứng và tính chất hóa học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 250k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_089', 'user_089', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 089, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như đạo hàm và bất phương trình, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 237k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_090', 'user_090', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 090, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và oxi hóa khử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 249k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_091', 'user_091', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 091, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và cảm thụ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 191k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_092', 'user_092', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 092, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện xoay chiều và đồ thị, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 204k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_093', 'user_093', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 093, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và cảm thụ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 225k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_094', 'user_094', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 094, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Từ vựng và Ngữ pháp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_095', 'user_095', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 095, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như dao động và mạch điện, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 206k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_096', 'user_096', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 096, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Ngữ pháp và Writing, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 207k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_097', 'user_097', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 097, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 214k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_098', 'user_098', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 098, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hàm số và bất phương trình, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 182k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_099', 'user_099', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 099, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như phản ứng và tính chất hóa học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 182k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_100', 'user_100', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 100, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 183k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_101', 'user_101', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 101, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như mạch điện và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 199k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_102', 'user_102', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 102, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như đồ thị và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 208k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_103', 'user_103', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 103, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như ADN và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 186k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_104', 'user_104', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 104, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như dao động và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_105', 'user_105', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 105, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Nói và Ngữ pháp, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 194k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_106', 'user_106', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 106, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Nói và Listening, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 218k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_107', 'user_107', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 107, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Từ vựng và Writing, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 249k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_108', 'user_108', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 108, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện xoay chiều và cảm ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 207k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_109', 'user_109', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 109, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như dao động và đồ thị, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 181k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_110', 'user_110', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 110, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích tác phẩm và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 218k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_111', 'user_111', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 111, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện xoay chiều và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_112', 'user_112', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 112, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 247k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_113', 'user_113', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 113, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 191k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_114', 'user_114', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 114, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và phản ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 240k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_115', 'user_115', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 115, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như dao động và cảm ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 202k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_116', 'user_116', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 116, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Listening và Writing, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 195k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_117', 'user_117', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 117, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích tác phẩm và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 226k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_118', 'user_118', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 118, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như đạo hàm và hình học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_119', 'user_119', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 119, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và phân tích tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 200k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_120', 'user_120', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 120, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học và đạo hàm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 187k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_121', 'user_121', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 121, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như dao động và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 182k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_122', 'user_122', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 122, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như dao động và cảm ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 233k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_123', 'user_123', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 123, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Ngữ pháp và Listening, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 235k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_124', 'user_124', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 124, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 227k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_125', 'user_125', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 125, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như bất phương trình và tích phân, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 232k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_126', 'user_126', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 126, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như phân tích tác phẩm và viết đoạn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 239k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_127', 'user_127', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 127, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_128', 'user_128', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 128, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hình học và tích phân, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 242k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_129', 'user_129', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 129, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 181k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_130', 'user_130', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 130, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như dàn ý và viết đoạn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_131', 'user_131', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 131, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 204k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_132', 'user_132', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 132, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và đồ thị, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 218k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_133', 'user_133', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 133, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 209k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_134', 'user_134', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 134, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Ngữ pháp và Nói, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 184k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_135', 'user_135', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 135, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện xoay chiều và đồ thị, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 198k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_136', 'user_136', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 136, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Listening và Nói, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 192k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_137', 'user_137', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 137, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Từ vựng và Writing, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 219k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_138', 'user_138', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 138, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như đồ thị và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 191k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_139', 'user_139', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 139, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như bất phương trình và hình học, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 247k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_140', 'user_140', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 140, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như ADN và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 244k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_141', 'user_141', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 141, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như oxi hóa khử và phản ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 211k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_142', 'user_142', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 142, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Ngữ pháp và Writing, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 219k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_143', 'user_143', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 143, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 196k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_144', 'user_144', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 144, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và đồ thị, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 238k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_145', 'user_145', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 145, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như đồ thị và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 194k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_146', 'user_146', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 146, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và bảng tuần hoàn, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 227k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_147', 'user_147', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 147, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như dàn ý và phân tích tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 210k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_148', 'user_148', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 148, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 226k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_149', 'user_149', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 149, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và tiến hóa, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 207k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_150', 'user_150', $$ 📌 *CẦN GIA SƯ MÔN TOÁN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 150, hiện đang gặp nhiều khó khăn khi học môn Toán. Đặc biệt là các phần như hàm số và đạo hàm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 194k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_151', 'user_151', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 151, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như oxi hóa khử và phản ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 194k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_152', 'user_152', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 152, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và dao động, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 211k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_153', 'user_153', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 153, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như viết đoạn và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 234k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_154', 'user_154', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 154, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như tính chất hóa học và oxi hóa khử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 183k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_155', 'user_155', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 155, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như tiến hóa và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 216k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_156', 'user_156', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 156, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và đột biến, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 187k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_157', 'user_157', $$ 📌 *CẦN GIA SƯ MÔN HÓA - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 157, hiện đang gặp nhiều khó khăn khi học môn Hóa. Đặc biệt là các phần như phản ứng và oxi hóa khử, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào chiều thứ 3 - 5
💰 Học phí mong muốn: 226k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_158', 'user_158', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 158, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sau 19h mỗi ngày
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_159', 'user_159', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 159, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Nói và Listening, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 217k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_160', 'user_160', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 160, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như điện xoay chiều và cảm ứng, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 245k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_161', 'user_161', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 161, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và di truyền, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 220k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_162', 'user_162', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 162, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như đột biến và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 226k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_163', 'user_163', $$ 📌 *CẦN GIA SƯ MÔN SINH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 163, hiện đang gặp nhiều khó khăn khi học môn Sinh. Đặc biệt là các phần như di truyền và ADN, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 197k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_164', 'user_164', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 164, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như dàn ý và cảm thụ, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 230k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_165', 'user_165', $$ 📌 *CẦN GIA SƯ MÔN LÝ - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 165, hiện đang gặp nhiều khó khăn khi học môn Lý. Đặc biệt là các phần như cảm ứng và điện xoay chiều, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào cuối tuần
💰 Học phí mong muốn: 218k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_166', 'user_166', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 166, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Listening và Writing, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 215k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_167', 'user_167', $$ 📌 *CẦN GIA SƯ MÔN ANH - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 167, hiện đang gặp nhiều khó khăn khi học môn Anh. Đặc biệt là các phần như Từ vựng và Nói, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 184k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_168', 'user_168', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 168, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 216k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_169', 'user_169', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 169, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như dàn ý và phân tích tác phẩm, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào sáng thứ 7
💰 Học phí mong muốn: 181k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$),
('post_170', 'user_170', $$ 📌 *CẦN GIA SƯ MÔN VĂN - EM MUỐN HỌC HIỆU QUẢ HƠN*

Em là Học Sinh 170, hiện đang gặp nhiều khó khăn khi học môn Văn. Đặc biệt là các phần như cảm thụ và dàn ý, em học không hiểu sâu, làm bài thường sai sót hoặc mất nhiều thời gian.

Em mong muốn tìm một thầy/cô có thể:
• Giúp em học từ nền tảng, giải thích dễ hiểu
• Cho ví dụ sát thực tế và luyện tập từng bước
• Kiểm tra định kỳ để em theo dõi tiến bộ

🕒 Em có thể học vào tối thứ 2 - 4 - 6
💰 Học phí mong muốn: 205k/buổi
💻 Em ưu tiên học online, nếu gần có thể học offline.

Mong được thầy cô đồng hành ạ. $$);



