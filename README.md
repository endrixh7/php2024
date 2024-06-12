# php2024




# Data Types









# MYSQL Database

- Allows us to store data and manage data
- We have SQL and NoSQL
- NoSQL is No Structured Query Language

## We are going to use MYSQL and PDO (PHP Data Objects)
    PDO is a built-in extension that gives us an abstraction layer to connect and query our SQL databases and query our SQL databases
    PDO makes our app secure as it uses "prepared statements"

    Database Tooling - GUI
        - MYSQL Workbench   - Desktop
        - PHPMyAdmin        - Web based
        - Datagrip          - Desktop
        and more...
        
        or 

        we can use Laragon GUI for MySQL (Dont forget to START)
# SQL Queries from Brad Traversy
    - https://gist.github.com/bradtraversy/c831baaad44343cc945e76c2e30927b3

# Try to learn CRUD in SQL and you are good to go ❤️

# Users and Privileges in MYSQL

    Laragon credentials:
    MYSQL root -> root: nopassword
    port 3303, xprotocol 33060

    MYSQL for WorkBench credentials:
    MYSQL root -> root: root
    MYSQL user -> pdo password: pdoo
    port 3307, xprotocol 33070

    Login into CMD with this command: mysql -u root -P 3307 -p

    MYSQL Work Bench
    user        : endrisql
    passwd      : endrisql
    localhost   : localhost

    login: mysql -u endrisql -P 3307 -p
    show users: SELECT User, Host FROM mysql.user;

    Create user using cmd: CREATE USER 'lukassql'@'localhost' IDENTIFIED BY 'lukassql';
    Now this user dont have any privileges
    Lets give some privileges: GRANT ALL PRIVILEGES ON * . * TO 'lukassql'@'localhost';
    Show grants/privileges: SHOW GRANTS FOR 'lukassql'@'localhost';
    Done
    Other commands:
    - Remove grants
    - Delete user

# Connect With PDO

    - Create a database, hostname, port, user, password from MYSQL Workbench
    - Create DSN
    - Create a PDO instance
        - try and catch for 'connection' and for possibles 'errors'

# Fetch Multiple Records from Database


# Fetch Single Record from Database


# Post Form & Insert record

# Delete Records

# Edit Form & Update Record

