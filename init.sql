CREATE TABLE admins(
    admin_id varchar(20) primary key,
    admin_username varchar(50) not null unique,
    admin_password varchar(150) not null,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users(
    user_id varchar(20) primary key,
    username VARCHAR(50) NOT NULL unique,
    password varchar(150) not null,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    name text not null,
    birth_date date not null,
    gender varchar(6) not null check(gender in ('Male', 'Female')),
    email VARCHAR(100) UNIQUE,
    address text
);

CREATE TABLE students(
    user_id varchar(20) references users(user_id) ON DELETE CASCADE primary key
);

CREATE TABLE teachers (
    user_id varchar(20) REFERENCES users(user_id) ON DELETE CASCADE PRIMARY KEY,
    avg_rate NUMERIC(3,2) DEFAULT 0
);

CREATE TABLE subjects (
    subject_id varchar(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE classes (
    class_id varchar(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    subject_id varchar(20) REFERENCES subjects(subject_id) ON DELETE SET NULL
);

CREATE TABLE class_Student (
    student_id varchar(20) REFERENCES students(user_id) ON DELETE CASCADE,
    class_id varchar(20) REFERENCES classes(class_id) ON DELETE CASCADE,
    PRIMARY KEY (student_id, class_id)
);

CREATE TABLE reviews (
    review_id varchar(20) PRIMARY KEY,
    student_id varchar(20) REFERENCES students(user_id) ON DELETE CASCADE,
    teacher_id varchar(20) REFERENCES teachers(user_id) ON DELETE CASCADE,
    rate INT CHECK (rate >= 0 AND rate <= 5),
    comment TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts (
    post_id varchar(20) PRIMARY KEY,
    user_id varchar(20) REFERENCES users(user_id) ON DELETE CASCADE,
    content TEXT NOT NULL
);

-- LOGS_AI_MATCHING
CREATE TABLE logs_AI_matching (
    matching_log_id varchar(20) PRIMARY KEY,
    student_id varchar(20) REFERENCES students(user_id) ON DELETE CASCADE,
	teacher_id varchar(20) REFERENCES teachers(user_id) ON DELETE CASCADE,
    class_id varchar(20) REFERENCES classes(class_id) ON DELETE SET NULL,
    post_id varchar(20) REFERENCES posts(post_id) ON DELETE SET NULL,
	status VARCHAR(50) DEFAULT 'pending' check(status in ('pending', 'matched')),
    matched_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	UNIQUE (post_id, status)
);

