CREATE TABLE note (
    id IDENTITY PRIMARY KEY,
    title VARCHAR,
    content VARCHAR
);

CREATE TABLE users (
  user_id IDENTITY PRIMARY KEY,
  username VARCHAR NOT NULL,
  password VARCHAR NOT NULL,
  role VARCHAR NOT NULL,
  enabled TINYINT DEFAULT NULL
);