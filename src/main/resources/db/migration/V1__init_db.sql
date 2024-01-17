DROP TABLE IF EXISTS note;
DROP TABLE IF EXISTS users;

CREATE TABLE note (
    id IDENTITY PRIMARY KEY,
    title VARCHAR(100),
    content VARCHAR(1000),
    CONSTRAINT CK_title CHECK ( CHAR_LENGTH(title) > 0 ),
    CONSTRAINT CK_content CHECK ( CHAR_LENGTH(content) > 0 )
);

CREATE TABLE users (
  user_id IDENTITY PRIMARY KEY,
  username varchar(45) NOT NULL,
  password varchar(64) NOT NULL,
  role varchar(45) NOT NULL,
  enabled tinyint DEFAULT NULL
);