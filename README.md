# php2024




# Data Types





# Functions

    function functionName(parameter1, parameter2) {
        // Code to be executed
    }

    functionName()
    functionName(arg1, arg2)

    The importance of 'return' value
    
    function sayGoodbye() {
        return 'goodbye'; // we are saving the value in this function
    }

    $goodbye = sayGoodbye()
    echo $goodbye;

## Functions, arguments, params

    <?php>

    function add($a, $b) {
        return $a +$b
    }

    echo add(1, 2)
    echo add(100, 220)

    params - are the variables
    arguments - are the real values

    What happen if we dont pass nothing in params?
    // Fatal error

    function add($a, $b) {
        return $a +$b
    }

    echo add()

    Fixed

    function add($a = 1, $b = 2) {
        return $a +$b
    }

    echo add()

    Variable arguments
    In JS world is called Rest/Spread Operator ...
    In PHP world is called Splat Operator

    function addNumber (...$number) {
        $total = 0;

        foreach($numbers as $number) {
            $total += $number;
        }

        return $total;
    }

    echo addNumber(1,2,3,4,5,6)

## Functions, Global & Local Scope

    // Global scope - the highest scope, defined in global scope, called in global scope

    // Function Scope - The local scope, defined in local function, called in function scope
        // Passing the global variable into function scope you must pass it as parameter, and call it as argument
        // We can defined in our function variables as global using 'global' keyword

## Functions, Constants
    // Variables that will not be changed

    Its convenient to use _ and all uppercase
    Define function
    Const keyword

    <?php

    define('APP_NAME', 'My App') - first field is NAME, second field is VALUE 
    define('APP_VERSION', '1.0.0')

    echo APP_NAME 

    <?php

    const DB_NAME = 'mydb';
    const DB_HOST = 'localhost';

    echo DB_NAME, DB_HOST;

    These CONSTANTS can be called in function scope without the 'global' keyword
    const is used only for config files
    define() will be used basic logic in your application

    functio run(){
        echo APP_NAME;
        echo DB_NAME, DB_HOST;
    }

    run()

## Functions, Optional Type Declaration

    // PHP is dynamically typed language
    // In PHP we have the options to have STRICT types

    <?php
    // Turn on strict types

    declare(strict_types = 1);

    function getSum (int $a, int $b): int {
        return $a +$b;
    }

    echo getSum(1, '1');
    // Error
    // If we dont turn of the declare, the output will be 2

    // void keyword
        // Used to have a echo inside of the function but not to return a value use void

        function getSum (int $a, int $b): void {
        echo $a +$b;
    }

## Functions, challenge, Activity: Job Listing Helper Functions

    // Format salary
    // Take a user input, number
    // Format that number using format_number() function
    // Render on HTML

## Functions, challenge, Average Salary
    // 





# SUPERGLOBALS

    - Group of global variables that are accessible from anywhere in a PHP scripts, including functions and classes
    - They are associative arrays that store information about things such as the current request, the server, sessions, cookies and more
    - They make PHP very practical, however, if you are not careful, they can be a source of security of vulnerabilities
    - We have 9 different SUPERGLOBALS
    - Laravel is solution for security

    - $_SERVER : Contains info about the server such as hostname, file paths, etc
    - $_GET : Variables passed to the script via query params and GET forms
    - $_POST: Variables passed to the script via POST forms
    - $_FILES: Items uploaded to current script
    - $_COOKIE: Variables passed to script via HTTP cookies
    - $_SESSION: Session variables available to the script
    - $_REQUEST: Contains the contents of $_GET, $_POST and $_COOKIE (not recommended)
    - $_ENV: Variables passed to the current script via environment method

## SERVER SUPERGLOBAL ARRAY

    In Web APP world we need to access server related information
    Server Variables:
    Very important, http, all methods used in forms

        $requestMethod = $_SERVER['REQUEST_METHOD'] ?? ''; // GET Request, default, always check if this method is pre-SET or null coalescing (router)
        $serverProtocol = $_SERVER['SERVER_PROTOCOL'] ?? ''; // Check the name and the protocol, like http/1.1
        $serverName = $_SERVER['SERVER_NAME'] ?? ''; // localhost or the ip/hostname/domain
        $serverPort = $_SERVER['SERVER_PORT'] ?? ''; // Check for the port, 8000
        $serverSoftware = $_SERVER['SERVER_SOFTWARE'] ?? ''; // Usuallly will be Apache/Nginx
        $serverAdmin = $_SERVER['SERVER_ADMIN'] ?? ''; // Check for the admin OR the webmaster
        $documentRoot = $_SERVER['DOCUMENT_ROOT'] ?? ''; // ROOT/USER/PROJECT
        $scriptFilename = $_SERVER['SCRIPT_FILENAME'] ?? ''; //  ROOT/USER/PROJECT/INDEX.PHP
        $scriptName = $_SERVER['SCRIPT_NAME'] ?? ''; //  INDEX.PHP
        $phpSelf = $_SERVER['PHP_SELF'] ?? ''; //  INDEX.PHP
        $remoteAddress = $_SERVER['REMOTE_ADDR'] ?? ''; //  127.0.0.1
        $connection = $_SERVER['HTTP_CONNECTION'] ?? ''; // KEEP-ALIVE
        $host = $_SERVER['HTTP_HOST'] ?? ''; // localhost:8000
        $referer = $_SERVER['HTTP_REFERER'] ?? ''; // STORES THE URL
        $userAgent = $_SERVER['HTTP_USER_AGENT'] ?? ''; // Mozilla/5.0 or Chrome
        $queryString = $_SERVER['QUERY_STRING'] ?? ''; // PARAMETERS ON URL BAR, localhost:8000?name=brad, query string is name=brad
        $requestUri = $_SERVER['REQUEST_URI'] ?? ''; // request all full url including the queryString

## Environment Variables & $GLOBALS

    How to set an environment variable using 'putenv' function.
    Example:
        putenv('DB_HOST=localhost');
        putenv('DB_USER=root');

        How to get these?
            $host = getenv('DB_HOST');
            $user = getenv('DB_USER');

        Render them on html
        <?= $host ?>
        <?= $user ?>

        var_dump(getenv()) -> Will display everything from Environment Variables

        $GLOBALS to access variables
        Dont recommended

## $_GET - Data From Query Params






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
        - Put in other file only for db connection

# Fetch Multiple Records from Database

    - Import the db connection file into our main file, index.php
    - Require syntax
    - Create a simple blog posts with HTML/CSS
        - Prepare a SELECT statement using PDO, write secure code, reduce SQL injection
            - name convention is $stmt = $pdo->prepare('SELECT * FROM posts')
        - Execute the statement
            $stmt->execute();
        - Fetch results
            $results = $stmt->fetchAll()
        - Pre Tag
            - var_dump()
        - Pre Tag
        - FETCH DATA as OBJECT is recommended
        - PDO::FETCH_ASSOC, set it as attribute on DB Connection 
    - Render in our UI
        - Wrap the HTML with a foreach loop
            - Replace the hard coded data  our dynamic data (arrary or object syntax)

# Fetch Single Record from Database
    - Dont forget to require database
    - Click on that post and get that specific data
    - Use SUPERGLOBALS to fetch data (url), access posts using 'id', make it conditional using operator ||, redirect, if statement  
    - Create a Post php file, we will need later to render our data
    - Fetch Data from database, use that id and create a SQL Query, but make sure to use PREPARE STATEMENT, because it will be treated as string, and this will save us from the SQLi, use placeholder :
    Bad code:
    $sql = 'SELECT * FROM posts WHERE id = ' .$id;
    Good code:
    $sql = 'SELECT * FROM posts WHERE id = :id;
    In this query we are using user input

    $stmt = $pdo->prepare($sql);
    // Store id in a variable
    $params = ['id'=> $id];
    $stmt->execute($params);

    Fetch data and store to a variable
    $posts = $stmt->fetch()
    Now render data

# Post Form & Insert record

    - Dont forget to require database
    - We have a form
        title and body
    - Make sure that we are looking for a post request
    - Another important thing is, 'name' attribute
    - Important SUPERGLOBALS, SERVER, POST, isset, submit
        -remove html tags in database using, htmlspecialchars for title, body
    - Insert into database, create a query, dont forget prepare statement
    - Set up params, execute, redirect and exit

# Delete Records

- Dont forget SUPERGLOBALS
- Delete Form
    - action = delete.php, method="post"
    - input = hidden, name=_method, value=delete (these will be used in our script for validation)
    - input = hidden, name=id, value="$post id"
    - button, name=submit,

    Require Database
    Create delete.php file
        - check if SERVER Request is POST and POST is _method = delete and dont forget for null coalescing $_POST
            - This is depended from the hidden input _method
        - Check for the request
            - Lets get the id from our post
            - Create the query
            - Create the prepare statement
            - Set params
            - execute statement(params)
            - redirect
                - adding messages using JS

# Edit Form & Update Record

    Update data
    Two parts process
    1- Edit Page, fetch that posts and edit
    2- Update the page, submit the form and update

    We need two buttons
        - Edit, edit.php file, id
            - get the data from post.php 
        - Delete, 

