DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsert$$

CREATE PROCEDURE loopInsert()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100000 DO
            INSERT INTO User(id, password, name, nickname, email, age)
            VALUES(concat('아이디',i), concat('비밀번호',i), concat('이름',i), concat('닉네임',i), concat('이메일',i), 20);
            SET i = i + 1;
        END WHILE;
END$$
DELIMITER $$

CALL loopInsert;