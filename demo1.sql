Last login: Fri Feb  5 15:07:03 on console
(base) bogon:~ apple$ SQLite -v
-bash: SQLite: command not found
(base) bogon:~ apple$ sqlite3 -v
sqlite3: Error: unknown option: -v
Use -help for a list of options.
(base) bogon:~ apple$ sqlite3
SQLite version 3.33.0 2020-08-14 13:23:32
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite> exit
   ...> ;
Error: near "exit": syntax error
sqlite> exit;
Error: near "exit": syntax error
sqlite> .help
.archive ...             Manage SQL archives
.auth ON|OFF             Show authorizer callbacks
.backup ?DB? FILE        Backup DB (default "main") to FILE
.bail on|off             Stop after hitting an error.  Default OFF
.binary on|off           Turn binary output on or off.  Default OFF
.cd DIRECTORY            Change the working directory to DIRECTORY
.changes on|off          Show number of rows changed by SQL
.check GLOB              Fail if output since .testcase does not match
.clone NEWDB             Clone data into NEWDB from the existing database
.databases               List names and files of attached databases
.dbconfig ?op? ?val?     List or change sqlite3_db_config() options
.dbinfo ?DB?             Show status information about the database
.dump ?TABLE?            Render database content as SQL
.echo on|off             Turn command echo on or off
.eqp on|off|full|...     Enable or disable automatic EXPLAIN QUERY PLAN
.excel                   Display the output of next command in spreadsheet
.exit ?CODE?             Exit this program with return-code CODE
.expert                  EXPERIMENTAL. Suggest indexes for queries
.explain ?on|off|auto?   Change the EXPLAIN formatting mode.  Default: auto
.filectrl CMD ...        Run various sqlite3_file_control() operations
.fullschema ?--indent?   Show schema and the content of sqlite_stat tables
.headers on|off          Turn display of headers on or off
.help ?-all? ?PATTERN?   Show help text for PATTERN
.import FILE TABLE       Import data from FILE into TABLE
.imposter INDEX TABLE    Create imposter table TABLE on index INDEX
.indexes ?TABLE?         Show names of indexes
.limit ?LIMIT? ?VAL?     Display or change the value of an SQLITE_LIMIT
.lint OPTIONS            Report potential schema issues.
.load FILE ?ENTRY?       Load an extension library
.log FILE|off            Turn logging on or off.  FILE can be stderr/stdout
.mode MODE ?TABLE?       Set output mode
.nullvalue STRING        Use STRING in place of NULL values
.once ?OPTIONS? ?FILE?   Output for the next SQL command only to FILE
.open ?OPTIONS? ?FILE?   Close existing database and reopen FILE
.output ?FILE?           Send output to FILE or stdout if FILE is omitted
.parameter CMD ...       Manage SQL parameter bindings
.print STRING...         Print literal STRING
.progress N              Invoke progress handler after every N opcodes
.prompt MAIN CONTINUE    Replace the standard prompts
.quit                    Exit this program
.read FILE               Read input from FILE
.recover                 Recover as much data as possible from corrupt db.
.restore ?DB? FILE       Restore content of DB (default "main") from FILE
.save FILE               Write in-memory database into FILE
.scanstats on|off        Turn sqlite3_stmt_scanstatus() metrics on or off
.schema ?PATTERN?        Show the CREATE statements matching PATTERN
.selftest ?OPTIONS?      Run tests defined in the SELFTEST table
.separator COL ?ROW?     Change the column and row separators
.sha3sum ...             Compute a SHA3 hash of database content
.shell CMD ARGS...       Run CMD ARGS... in a system shell
.show                    Show the current values for various settings
.stats ?on|off?          Show stats or turn stats on or off
.system CMD ARGS...      Run CMD ARGS... in a system shell
.tables ?TABLE?          List names of tables matching LIKE pattern TABLE
.testcase NAME           Begin redirecting output to 'testcase-out.txt'
.testctrl CMD ...        Run various sqlite3_test_control() operations
.timeout MS              Try opening locked tables for MS milliseconds
.timer on|off            Turn SQL timer on or off
.trace ?OPTIONS?         Output each SQL statement as it is run
.vfsinfo ?AUX?           Information about the top-level VFS
.vfslist                 List all available VFSes
.vfsname ?AUX?           Print the name of the VFS stack
.width NUM1 NUM2 ...     Set minimum column widths for columnar output
sqlite> .databases
main:
sqlite> .exit
(base) bogon:~ apple$ mysql3
-bash: mysql3: command not found
(base) bogon:~ apple$ sqlite3
SQLite version 3.33.0 2020-08-14 13:23:32
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite> .show
        echo: off
         eqp: off
     explain: auto
     headers: off
        mode: list
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: :memory:
sqlite> .header on
sqlite> .show
        echo: off
         eqp: off
     explain: auto
     headers: on
        mode: list
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: :memory:
sqlite> .mode column
sqlite> .show
        echo: off
         eqp: off
     explain: auto
     headers: on
        mode: column
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: :memory:
sqlite> .timer on
sqlite> .show
        echo: off
         eqp: off
     explain: auto
     headers: on
        mode: column
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: :memory:
sqlite> .databases
main:
sqlite> analyze main
   ...> ;
Run Time: real 0.004 user 0.000547 sys 0.001487
sqlite> .quit
(base) bogon:~ apple$ sqlite3 demo1
SQLite version 3.33.0 2020-08-14 13:23:32
Enter ".help" for usage hints.
sqlite> .databases
main: /Users/apple/demo1
sqlite> .quit
(base) bogon:~ apple$ sqlite3 demo1.db
SQLite version 3.33.0 2020-08-14 13:23:32
Enter ".help" for usage hints.
sqlite> .databases
main: /Users/apple/demo1.db
sqlite> .show
        echo: off
         eqp: off
     explain: auto
     headers: off
        mode: list
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: demo1.db
sqlite> .headers
Usage: .headers on|off
sqlite> .headers on
sqlite> .show
        echo: off
         eqp: off
     explain: auto
     headers: on
        mode: list
   nullvalue: ""
      output: stdout
colseparator: "|"
rowseparator: "\n"
       stats: off
       width:
    filename: demo1.db
sqlite> .databases
main: /Users/apple/demo1.db
sqlite> ATTACH DATABASE 'demo1.db' AS 'demo1';
sqlite> .database
main: /Users/apple/demo1.db
demo1: /Users/apple/demo1.db
sqlite> ATTACH DATABASE 'demo1.db' AS 'currenttest';
sqlite> .database
main: /Users/apple/demo1.db
demo1: /Users/apple/demo1.db
currenttest: /Users/apple/demo1.db
sqlite> DETACH DATABASE 'currenttest';
sqlite> .database
main: /Users/apple/demo1.db
demo1: /Users/apple/demo1.db
sqlite> ATTACH DATABASE 'demo1.db' AS 'demo1';
Error: database demo1 is already in use
sqlite> .database
main: /Users/apple/demo1.db
demo1: /Users/apple/demo1.db
sqlite> CREATE TABLE COMPANY();
Error: near ")": syntax error
sqlite> CREATE TABLE COMPANY();
Error: near ")": syntax error
sqlite> CREATE TABLE COMPANY(ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, AGE INT NOT NULL, ADDRESS CHAR(50), SALARY REAL);
sqlite> .table
COMPANY        demo1.COMPANY
sqlite> CREATE TABLE DEPARTMENT(ID INT PRIMARY KEY NOT NULL, DEPT CHAR(50) NOT NULL, EMP_ID INT NOT NULL);
sqlite> .table
COMPANY           DEPARTMENT        demo1.COMPANY     demo1.DEPARTMENT
sqlite> .schema company
CREATE TABLE COMPANY(ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, AGE INT NOT NULL, ADDRESS CHAR(50), SALARY REAL);
CREATE TABLE demo1.COMPANY(ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, AGE INT NOT NULL, ADDRESS CHAR(50), SALARY REAL);
sqlite> DROP TABLE DEPARTMENT;
sqlite> .tables
COMPANY        demo1.COMPANY
sqlite> CREATE TABLE DEPARTMENT(
   ...>    ID INT PRIMARY KEY      NOT NULL,
   ...>    DEPT           CHAR(50) NOT NULL,
   ...>    EMP_ID         INT      NOT NULL
   ...> );
sqlite> .tables
COMPANY           DEPARTMENT        demo1.COMPANY     demo1.DEPARTMENT
sqlite> INSERT INTO COMPANY VALUES(1,'TOM','20','XINGHE STREET',42000.00);
sqlite> .tables
COMPANY           DEPARTMENT        demo1.COMPANY     demo1.DEPARTMENT
sqlite> SELECT * FROM COMPANY
   ...>
   ...> ;
ID|NAME|AGE|ADDRESS|SALARY
1|TOM|20|XINGHE STREET|42000.0
sqlite> INSERT INTO COMPANY VALUES(2,'MIKE',23,'PINGKS STREET',12000);
sqlite> INSERT INTO COMPANY VALUES(3,'DHE',13,'ADAGKS STREET',1300);
sqlite> SELECT * FROM COMPANY;
ID|NAME|AGE|ADDRESS|SALARY
1|TOM|20|XINGHE STREET|42000.0
2|MIKE|23|PINGKS STREET|12000.0
3|DHE|13|ADAGKS STREET|1300.0
sqlite>
