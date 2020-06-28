CREATE DATABASE student_examination_sys;

use student_examination_sys

drop table if exists `student`;
create table `student` (
  `id` varchar(255) NOT NULL PRIMARY KEY,
  `name` varchar(128) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into student values('001','zhangsan','18','male'),('002','lisi','20','female');

drop table if exists `subject`;
create table `subject` (
  `id` varchar(255) NOT NULL PRIMARY KEY,
  `subject` varchar(128) NOT NULL,
  `teacher` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into `subject` values('1001','Chinese','Mr. Wang','the exam is easy'),('1002','math','Miss Liu','the exam is difficult');

drop table if exists `score`;
create table `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY key,
  `student_id` varchar(255) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  `score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into score values(1,'001','1001','80'),(2,'002','1002','60'),(3,'001','1001','70'),(4,'002','1002','60.5');