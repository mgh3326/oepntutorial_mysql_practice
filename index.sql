use class;
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id`           tinyint(4)                                     NOT NULL AUTO_INCREMENT,
  `name`         char(4)                                        NOT NULL,
  `address`      varchar(50)                                    NOT NULL,
  `department`   enum ('국문과', '영문과', '컴퓨터공학과', '전자공학과', '물리학과') NOT NULL,
  `introduction` text                                           NOT NULL,
  `number`       char(255)                                      NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_number` (`number`) USING BTREE,
  KEY `idx_department` (`department`),
  KEY `idx_department_name` (`department`, `address`),
  FULLTEXT KEY `idx_introduction` (`introduction`)
)
  ENGINE = MyISAM
  AUTO_INCREMENT = 9
  DEFAULT CHARSET = utf8;

INSERT INTO `student` VALUES (1, '이숙경', '청주', '컴퓨터공학과', '저는 컴퓨터 공학과에 다닙니다. computer', '0212031');
INSERT INTO `student` VALUES (2, '박재숙', '서울', '영문과', '저는 영문과에 다닙니다.', '0512321');
INSERT INTO `student` VALUES (3, '백태호', '경주', '컴퓨터공학과', '저는 컴퓨터 공학과에 다니고 경주에서 왔습니다.', '0913134');
INSERT INTO `student` VALUES (4, '김경훈', '제천', '국문과', '제천이 고향이고 국문과에 다닙니다.', '9813413');
INSERT INTO `student` VALUES (6, '김경진', '제주', '국문과', '이번에 국문과에 입학한 김경진이라고 합니다. 제주에서 왔어요.', '0534543');
INSERT INTO `student` VALUES (7, '박경호', '제주', '국문과', '박경호입니다. 잘 부탁드립니다.', '0134511');
INSERT INTO `student` VALUES (8, '김정인', '대전', '영문과', '김정인입니다. 대전에서 왔고, 영문과에 다닙니다.', '0034543');

select *
from student
where id = 3;

select *
from student
where number = 0534543s;

select *
from student
where department = '국문과'

SELECT
  introduction,
  MATCH(introduction) AGAINST('영문과에')
FROM student
WHERE MATCH(introduction) AGAINST('영문과에');

select *
from student
where department = '국문과' AND address = '제주';

