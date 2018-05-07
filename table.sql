use class;
#테이블 생성
CREATE TABLE `student` (
  `id`       tinyint           NOT NULL,
  `name`     char(4)           NOT NULL,
  `sex`      enum ('남자', '여자') NOT NULL,
  `address`  varchar(50)       NOT NULL,
  `birthday` datetime          NOT NULL,
  PRIMARY KEY (`id`)
);
# TINYINT( )	-128 ~ 127 정수형 0 ~ 255 정수형, UNSIGNED
# NOT NULL 값이 반드시 들어와야 한다.
#테이블 리스트
show tables;
#테이블 스키마 열람
desc student;
#테이블 제거