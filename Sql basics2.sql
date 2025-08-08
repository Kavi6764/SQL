use sqltesting;

create table std_marks (
std_id int primary key auto_increment,
std_name varchar(200),
std_sbj varchar(150),
marks int ,
exam1_date date,
dept varchar(150)

);

INSERT INTO std_marks (std_name, std_sbj, marks, exam1_date, dept) VALUES
('Alice Johnson', 'Mathematics', 89, '2025-03-15', 'Science'),
('Bob Smith', 'Physics', 76, '2025-03-16', 'Science'),
('Charlie Brown', 'Chemistry', 68, '2025-03-17', 'Science'),
('Diana Prince', 'Mathematics', 91, '2025-03-15', 'Science'),
('Ethan Hunt', 'History', 74, '2025-03-20', 'Arts'),
('Fiona Gallagher', 'English', 85, '2025-03-22', 'Arts'),
('George Clark', 'Economics', 78, '2025-03-21', 'Commerce'),
('Hannah Baker', 'Accountancy', 88, '2025-03-23', 'Commerce'),
('Ian Malcolm', 'Business Studies', 82, '2025-03-23', 'Commerce'),
('Jane Doe', 'English', 92, '2025-03-22', 'Arts'),
('Kyle Reese', 'Physics', 67, '2025-03-16', 'Science'),
('Laura Palmer', 'Mathematics', 95, '2025-03-15', 'Science'),
('Mark Sloan', 'History', 71, '2025-03-20', 'Arts'),
('Nina Dobrev', 'Chemistry', 84, '2025-03-17', 'Science'),
('Oscar Wilde', 'English', 88, '2025-03-22', 'Arts'),
('Paula Abdul', 'Accountancy', 77, '2025-03-23', 'Commerce'),
('Quentin Blake', 'Physics', 73, '2025-03-16', 'Science'),
('Rachel Green', 'Economics', 81, '2025-03-21', 'Commerce'),
('Steve Rogers', 'Mathematics', 90, '2025-03-15', 'Science'),
('Tina Fey', 'English', 87, '2025-03-22', 'Arts'),
('Uma Thurman', 'History', 69, '2025-03-20', 'Arts'),
('Victor Stone', 'Business Studies', 79, '2025-03-23', 'Commerce'),
('Wendy Testaburger', 'Chemistry', 72, '2025-03-17', 'Science'),
('Xander Harris', 'Economics', 83, '2025-03-21', 'Commerce'),
('Yara Greyjoy', 'Mathematics', 86, '2025-03-15', 'Science'),
('Zoe Kravitz', 'English', 93, '2025-03-22', 'Arts'),
('Aaron Paul', 'Physics', 80, '2025-03-16', 'Science'),
('Bianca Lawson', 'History', 75, '2025-03-20', 'Arts'),
('Caleb Rivers', 'Accountancy', 78, '2025-03-23', 'Commerce'),
('Donna Paulsen', 'Chemistry', 85, '2025-03-17', 'Science');

select * from std_marks;

select std_name ,marks from std_marks;
select distinct dept FROM std_marks;
select * from std_marks 
where marks > 75;
select * from std_marks
where dept = "Science";
select * from std_marks
where exam1_date > "2025-3-10"
order by exam1_date desc;

select * from std_marks
where std_sbj = 'Mathematics';
 select * from std_marks
 where marks between 60 and 90;
 select count(*) as totalrecords from std_marks;
 select dept ,count(*) as totalstds from std_marks
 group by dept;
 select * from std_marks
 order by marks desc
 limit 1;
select std_sbj,avg(marks) as avg_marks
from std_marks
where dept = "science"
group by std_sbj
having avg (marks<70);
SELECT std_sbj, MAX(marks) AS top_score
FROM std_marks
GROUP BY std_sbj;
SELECT dept, MIN(marks) AS min_marks
FROM std_marks
WHERE std_sbj IN ('English', 'History')
GROUP BY dept
HAVING MIN(marks) > 40;
SELECT std_name, marks, exam1_date, dept
FROM std_marks
WHERE dept IN ('Computer Science', 'Electronics')
  AND marks BETWEEN 70 AND 90
  AND exam1_date > '2024-06-01';
SELECT std_sbj, AVG(marks) AS avg_marks
FROM std_marks
GROUP BY std_sbj
HAVING AVG(marks) > 75;
SELECT SUM(marks) AS total_marks
FROM std_marks
WHERE std_name IN ('Ravi', 'Sneha', 'Arjun');
SELECT dept, AVG(marks) AS avg_marks, COUNT(*) AS student_count
FROM std_marks
GROUP BY dept
HAVING AVG(marks) > 80 AND COUNT(*) > 3;




 

