CREATE SCHEMA chat
  DEFAULT CHARACTER SET utf8
  COLLATE utf8_spanish2_ci;

USE chat;

CREATE TABLE users (
  id       BIGINT UNIQUE NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE chatrooms (
  id        BIGINT UNIQUE NOT NULL AUTO_INCREMENT,
  name      VARCHAR(50) NOT NULL,
  createdBy BIGINT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT
      FOREIGN KEY (createdBy)
      REFERENCES users (id)
);

CREATE TABLE messages (
  id        BIGINT UNIQUE NOT NULL AUTO_INCREMENT,
  text      VARCHAR(255) NOT NULL,
  chatRoom  BIGINT NOT NULL,
  createdBy BIGINT NOT NULL,
  ts        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  CONSTRAINT
      FOREIGN KEY (chatRoom)
      REFERENCES chatrooms (id),
  CONSTRAINT
        FOREIGN KEY (createdBy)
        REFERENCES users (id)
);