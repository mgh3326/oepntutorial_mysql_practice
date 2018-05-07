use class;
desc student;
INSERT INTO `student` VALUES ('2', 'leez', '여자', '서울', '2000-10-26');
select *
from student;
INSERT INTO `student` (`id`, `name`, `sex`, `address`, `birthday`) VALUES ('1', 'egoi', '남자', 'seoul', '2000-11-16');
select *
from student;
INSERT INTO `student` (`id`, `name`, `sex`, `address`, `birthday`) VALUES ('3', 'egoi', '남자', 'seoul', '2000-1-1');
# 나는 왜 birthday를 비우면 안되지 ...
select *
from student;
