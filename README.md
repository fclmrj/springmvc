# springmvc - Spring MVC API

Project that explore Spring MVC features.

## Requirements

1. Java - 1.8.x

2. Maven - 3.3.9

## Steps to Setup

**1. Clone the application**

```bash
git clone https://github.com/fclmrj/springmvc.git
```

**2. Create Mysql database**

```bash
create database springmvc
```

**3. Change mysql username and password as per your installation**

+ open `src\main\java\org\springmvc\config\JPAConfiguration.java`

+ change `dataSource.setUsername` and `dataSource.setPassword` as per your mysql installation

**4. Build and run the app using maven**

```bash
mvn package
```

A new WAR file will be generated at `project/target/springmvc-0.0.1-SNAPSHOT.war`, just copy and deploy to your Tomcat.

The app will start running at <http://localhost:8080/springmvc/>.
