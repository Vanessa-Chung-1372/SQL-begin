CREATE DATABASE `sql_tutorial`;
SHOW DATABASES;

#DROP DATABASE `sql_tutorial`;
USE `sql_tutorial`;
CREATE TABLE`student`(
`student_id` INT, #後面加 AUTO_INCREMENT可以不用每次新增
`name` VARCHAR(20), #後面可加NOT NULL表示該值不可為NULL
`major` VARCHAR(20), #後面可加UNIQUE代表該值不能重複/ 也可以加上DEFAULT '歷史'
PRIMARY KEY(`student_id`)
);

DESCRIBE `student`;
#DROP TABLE `student`;

ALTER TABLE `student` ADD gpa DECIMAL(3,2);
#ALTER TABLE `student` DROP COLUMN gpa;

SELECT * FROM `student`;
INSERT INTO `student` VALUES(1, "小白", "歷史", 2.33);
INSERT INTO `student` VALUES(2, "小黑", "生物", 4.28);
INSERT INTO `student` VALUES(3, "小綠", "生物", NULL);
INSERT INTO `student` (`major`, `student_id`) VALUES("英文",  4);

#修改/刪除資料
SET SQL_SAFE_UPDATES = 0; #關閉

CREATE TABLE(
`student_id` INT, 
`name` VARCHAR(20), 
`major` VARCHAR(20), 
`score` INT
PRIMARY KEY(`student_id`)
);

SELECT * FROM `student`;
UPDATE `student`
