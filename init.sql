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
    gender varchar(6) not null check(gender in ('Male', 'Female'))
    email VARCHAR(100) UNIQUE,
    address text,
);

CREATE TABLE students(
    user_id varchar(20) references user(user_id) primary key ON DELETE CASCADE,
);

CREATE TABLE Teachers (
    user_id varchar(20) REFERENCES Users(id) PRIMARY KEY ON DELETE CASCADE,
    avg_rate NUMERIC(3,2) DEFAULT 0
);

CREATE TABLE Subjects (
    id varchar(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Classes (
    id varchar(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    subject_id varchar(20) REFERENCES Subjects(id) ON DELETE SET NULL
);

CREATE TABLE Class_Student (
    student_id varchar(20) REFERENCES Students(user_id) ON DELETE CASCADE,
    class_id varchar(20) REFERENCES Classes(id) ON DELETE CASCADE,
    PRIMARY KEY (student_id, class_id)
);

CREATE TABLE Reviews (
    id varchar(20) PRIMARY KEY,
    student_id varchar(20) REFERENCES Students(user_id) ON DELETE CASCADE,
    teacher_id varchar(20) REFERENCES Teachers(user_id) ON DELETE CASCADE,
    rate INT CHECK (rate >= 0 AND rate <= 5),
    comment TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Posts (
    id varchar(20) PRIMARY KEY,
    user_id varchar(20) REFERENCES Users(id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    status VARCHAR(50) DEFAULT 'pending' check(status in 'pending', 'matched')
);

-- LOGS_AI_MATCHING
CREATE TABLE Logs_AI_matching (
    id varchar(20) PRIMARY KEY,
    user_id varchar(20) REFERENCES Users(id) ON DELETE CASCADE,
    class_id varchar(20) REFERENCES Classes(id) ON DELETE SET NULL,
    post_id varchar(20) REFERENCES Posts(id) ON DELETE SET NULL,
    matched_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

