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
INSERT INTO `student` VALUES (8, '김정인', '남자', '대전', 200, '1990-10-1 00:00:00');
INSERT INTO `student` VALUES (6, '김경진', '여자', '제주', 400, '1985-1-1 00:00:00');
INSERT INTO `student` VALUES (7, '박경호', '남자', '영동', 310, '1981-2-3 00:00:00');

select * from student order by distance desc;

select * from student order by distance desc, address asc;
# 앞에꺼 먼저 되고 그 뒤에가 그 다음에 정렬된다