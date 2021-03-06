DROP SCHEMA IF EXISTS ascension;

CREATE SCHEMA ascension;
USE ascension;

CREATE TABLE user (
    user_id     NVARCHAR(20) NOT NULL,
    password    NVARCHAR(20) NOT NULL,
    first_name  NVARCHAR(50) ,
    last_name   NVARCHAR(50) ,
    email       NVARCHAR(70) ,
    security_provider_id INT ,
    default_customer_id  INT ,
    company     NVARCHAR(50) ,
    phone       NVARCHAR(20) ,
    address1    NVARCHAR(100),
    address2    NVARCHAR(100),
    country     NVARCHAR(20) ,
    postal      NVARCHAR(20) ,
    role        NVARCHAR(20) ,
    other_roles NVARCHAR(80) ,
    is_active   TINYINT  ,
    is_blocked  TINYINT  ,
    secret_question     NVARCHAR(100),
    secret_answer       NVARCHAR(100),
    enable_beta_testing TINYINT,
    enable_renewal      TINYINT,
    CONSTRAINT user_id PRIMARY KEY(user_id)
);

CREATE TABLE divisions (
  id            INT NOT NULL,
  name          NVARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);

CREATE TABLE roosters (
  id            NVARCHAR(10) NOT NULL,
  name          NVARCHAR(50) NOT NULL,
  nickname      NVARCHAR(50) NOT NULL,
  age           INT NOT NULL,
  country       NVARCHAR(50) NOT NULL,
  role          NVARCHAR(50) NOT NULL,
  avatar        NVARCHAR(50),
  is_captain    BOOLEAN NOT NULL,
  division_id   NVARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY(division_id) REFERENCES divisions
);
