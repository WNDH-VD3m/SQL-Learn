
CREATE TABLE SIGN_UP(

  username CHAR(50) PRIMARY KEY NOT NULL,
  major CHAR(50),
  email CHAR(100) NOT NULL,
  password TEXT NOT NULL,
  password0 TEXT NOT NULL

);


CREATE TABLE SIGN_IN(

  username CHAR(50) PRIMARY KEY NOT NULL,
  password TEXT NOT NULL

);

CREATE TABLE TODAY(

  today_task1 TEXT,
  today_task2 TEXT,
  today_task3 TEXT,
  today_task4 TEXT,
  today_task5 TEXT,
  today_task6 TEXT

);

CREATE TABLE TOMORROW(

  tomorrow_task1 TEXT,
  tomorrow_task2 TEXT,
  tomorrow_task3 TEXT,
  tomorrow_task4 TEXT,
  tomorrow_task5 TEXT,
  tomorrow_task6 TEXT

);

CREATE TABLE CS139(

  cs139_task1 TEXT,
  cs139_task2 TEXT,
  cs139_task3 TEXT,
  cs139_task4 TEXT,
  cs139_task5 TEXT,
  cs139_task6 TEXT

);

CREATE TABLE CS126(

  cs126_task1 TEXT,
  cs126_task2 TEXT,
  cs126_task3 TEXT,
  cs126_task4 TEXT,
  cs126_task5 TEXT,
  cs126_task6 TEXT

);

CREATE TABLE CS131(

  cs131_task1 TEXT,
  cs131_task2 TEXT,
  cs131_task3 TEXT,
  cs131_task4 TEXT,
  cs131_task5 TEXT,
  cs131_task6 TEXT

);
