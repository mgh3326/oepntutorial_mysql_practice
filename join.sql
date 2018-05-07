use class;
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id`       tinyint(4)        NOT NULL,
  `name`     char(4)           NOT NULL,
  `sex`      enum ('남자', '여자') NOT NULL,
  `address`  varchar(50)       NOT NULL,
  `distance` INT               NOT NULL,
  `birthday` datetime          NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO `student` VALUES (2, '박재숙', '남자', '서울', 10, '1985-10-26 00:00:00');
INSERT INTO `student` VALUES (1, '이숙경', '여자', '청주', 200, '1982-11-16 00:00:00');
INSERT INTO `student` VALUES (3, '백태호', '남자', '경주', 350, '1989-2-10 00:00:00');
INSERT INTO `student` VALUES (4, '김경훈', '남자', '제천', 190, '1979-11-4 00:00:00');
INSERT INTO `student` VALUES (8, '김정인', '남자', '제주', 400, '1990-10-1 00:00:00');
INSERT INTO `student` VALUES (6, '김경진', '여자', '제주', 400, '1985-1-1 00:00:00');
INSERT INTO `student` VALUES (7, '박경호', '남자', '영동', 310, '1981-2-3 00:00:00');

select *
from student;

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id`          tinyint(4)        NOT NULL,
  `name`        char(4)           NOT NULL,
  `sex`         enum ('남자', '여자') NOT NULL,
  `location_id` tinyint(4)        NOT NULL,
  `birthday`    datetime          NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id`       tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`     varchar(20)      NOT NULL,
  `distance` tinyint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

select *
from student;

desc class.student;

desc location;

INSERT INTO `location` VALUES (1, '서울', 10);
INSERT INTO `location` VALUES (2, '청주', 200);
INSERT INTO `location` VALUES (3, '경주', 255);
INSERT INTO `location` VALUES (4, '제천', 190);
INSERT INTO `location` VALUES (5, '대전', 200);
INSERT INTO `location` VALUES (6, '제주', 255);
INSERT INTO `location` VALUES (7, '영동', 255);
INSERT INTO `location` VALUES (8, '광주', 255);

INSERT INTO `student` VALUES (1, '이숙경', '여자', 1, '1982-11-16 00:00:00');
INSERT INTO `student` VALUES (2, '박재숙', '남자', 2, '1985-10-26 00:00:00');
INSERT INTO `student` VALUES (3, '백태호', '남자', 3, '1989-2-10 00:00:00');
INSERT INTO `student` VALUES (4, '김경훈', '남자', 4, '1979-11-4 00:00:00');
INSERT INTO `student` VALUES (6, '김경진', '여자', 5, '1985-1-1 00:00:00');
INSERT INTO `student` VALUES (7, '박경호', '남자', 6, '1981-2-3 00:00:00');
INSERT INTO `student` VALUES (8, '김정인', '남자', 5, '1990-10-1 00:00:00');

select *
from class.student;

select *
from location;

SELECT
  s.name,
  s.location_id,
  l.name AS address,
  l.distance
FROM student AS s LEFT JOIN location AS l ON s.location_id = l.id;

DELETE FROM location
WHERE name = '제주';

SELECT
  s.name,
  s.location_id,
  l.name AS address,
  l.distance
FROM student AS s LEFT JOIN location AS l ON s.location_id = l.id;
# 박경호 씨가 나옴
SELECT
  s.name,
  s.location_id,
  l.name AS address,
  l.distance
FROM student AS s INNER JOIN location AS l ON s.location_id = l.id;
# 박경호 씨가 빠짐