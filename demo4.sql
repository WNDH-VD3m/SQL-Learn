sqlite> SELECT * FROM COMPANY WHERE AGE IN ( 25, 27 );
//语句列出了 AGE 的值为 25 或 27 的所有记录


sqlite> SELECT * FROM COMPANY WHERE AGE NOT IN ( 25, 27 );
//语句列出了 AGE 的值既不是 25 也不是 27 的所有记录

 SELECT * FROM COMPANY WHERE AGE BETWEEN 25 AND 27;

//语句列出了 AGE 的值在 25 与 27 之间的所有记录
