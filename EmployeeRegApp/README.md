# EmployeeRegApp

## Description

EmployeeRegApp is an ASP.NET Web Forms application that enables employees to apply for leave and view the status of their leave applications. The app provides a user-friendly interface for submitting leave requests, viewing all submitted applications in a tabular format, and managing leave records. It supports integration with SQL Server for persistent data storage and is designed to be easily containerized for deployment using Docker.

## .NET Framework Details

This application targets **.NET Framework 4.7.1**, which offers enhanced performance, security, and reliability for web applications. .NET Framework 4.7.1 includes improvements in ASP.NET, cryptography, and high DPI support, and is fully compatible with Windows-based hosting environments. It is well-suited for enterprise-grade web solutions requiring robust data access, UI controls, and integration capabilities.

## Prerequisites
- [.NET Framework 4.7.1 Developer Pack](https://dotnet.microsoft.com/en-us/download/dotnet-framework/net471)
- [Visual Studio 2019 or later](https://visualstudio.microsoft.com/downloads/)
- [SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) (Express or Developer edition recommended)
- [Docker](https://www.docker.com/get-started) (for containerization)
- [Docker Compose](https://docs.docker.com/compose/install/) (optional, for multi-container setups)
- [Git](https://git-scm.com/downloads) (for cloning the repository)



--- 



## Containerizing EmployeeRegApp (Optional)

```bash
docker build -t employeeregapp .

docker run -d -p 8080:80 --name employeeregapp employeeregapp
```

Database Considerations
•	If your app uses SQL Server, connect to an external SQL Server instance or run SQL Server in a separate container.
•	Update your Web.config connection string as needed.

## Accessing the Application

Open a web browser and navigate to http://localhost:8080 (or the appropriate IP/port if not running locally).

## Containerizing with Docker Compose

1.	Update your Web.config connection string to use:

```
Server=sqlserver;Database=EmployeeDb;User Id=sa;Password=Your_password123;
```

2. 	Build and run with:

```bash
docker-compose up --build -d
```
3. 	Access the app at http://localhost:8080
 