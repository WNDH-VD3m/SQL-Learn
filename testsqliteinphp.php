<?php
    class myDBtest extends SQLite3{

        function __construct(){
            $this->open('demo1.db');
        }

    }

    $db = new myDBtest();

    if(!$db){
        echo $db->lastErrorMsg();
    }
    else{
        echo "Open the database successfully.\n";
        echo PHP_EOL;
    }

//    $sql =<<<EOF
//            CREATE TABLE SALARY
//            (ID INT PRIMARY KEY NOT NULL,
//            NAME CHAR(30) NOT NULL,
//            EM_SALARY REAL
//            );
//EOF;

//    $sql =<<<EOF
//      INSERT INTO SALARY
//      VALUES (1, 'Kim', 12000);
//
//      INSERT INTO SALARY
//      VALUES (2, 'Tom', 30000);
//
//      INSERT INTO SALARY
//      VALUES (3, 'Din', 25300);
//
//      INSERT INTO SALARY
//      VALUES (4, 'Make', 32000);
//EOF;

    $sql =<<<EOF
      SELECT * from SALARY;
EOF;

    $ret = $db->query($sql);

    while ($row = $ret->fetchArray(SQLITE3_ASSOC)){

        echo "ID: " . $row['ID'] . "\n";
        echo PHP_EOL;
        echo "NAME: " . $row['NAME'] . "\n";
        echo PHP_EOL;
        echo "EM_SALARY: " . $row['EM_SALARY'] . "\n\n";
        echo PHP_EOL;
        echo "\n";
        echo PHP_EOL;

    }

    echo "Operation done successfully\n";



//    $ret = $db->exec($sql);
//
//    if(!$ret){
//        echo $db->lastErrorMsg();
//    }
//    else{
//        echo "Table created successfully\n";
//    }

    $db->close();

?>
