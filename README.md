# **SQLtoAPI: Functional APIs with Role-Based Access Control from Postgres DB using NodeJS** 

## Description
* The app uses the **pg** library for connecting to a PostgreSQL database. 
* It uses bcrypt for hashing passwords. 
* It defines a users model with several methods for creating and querying users in the database. The model is exported for use in other modules. 

## **Motivation:**
* Gaining practical experience developing SQL queries and APIs using NodeJS and Express. 
* Improving the knowledge of remote database connections and role-based access control.

## **Specific Goal(s):**
* Enhancing skills in developing APIs for functional requirements of using SQL queries and NodeJS. 
* Practicing implementing role-based access control for specific actions.

## **Problem(s) solved:**
* Developing APIs to extract the required information from a database to meet the functional requirements. 
* Providing a solution for implementing role-based access control to restrict access for specific actions based on user roles.

## **Takeaways:**
* Creating SQL queries to extract the required information from PostgreSQL. 
* Gaining experience in using NodeJS and Express to create an API to support the functional requirements. 
* Implementing role-based access control using **middleware** functions to restrict access to specific APIs based on user roles. 
* Testing and demonstrating the functionalities of their APIs using **Postman**.

## **Unique Features:**
* Provides a practical example of developing SQL queries and APIs to support the functional requirements using Postgres DB. 
* Demonstrates the importance of implementing role-based access control for specific actions to ensure data security. 
* Highlights the use of NodeJS and Express to create APIs and the importance of testing and demonstrating API functionalities using Postman.

## **The Process in 6 Steps:**
_Step 1: Setting up the project._
1.	Create a new **Node.js** project and navigate to its root directory using a command prompt or terminal.

2.	Install the following dependencies using **npm**.

>To build the RESTful API: **Express.js**

>PostgreSQL client library for Node.js: **pg** 

>Middleware for parsing JSON data: **body-parser**

>To hash passwords: **bcryptjs**

>To generate JSON Web Tokens (JWT) for authentication: **jsonwebtoken**

3.	Set up the PostgreSQL database and create the necessary tables and constraints.
---
_Step 2: Creating the API endpoints:_
* Define the required API endpoints for each functional requirement.
* Implement the logic for each endpoint using **Express.js** and **pg**.
 
* Ensure each API endpoint has validation checks for user authentication and authorisation.
> Note.
> * In a Node.js and Express app, access for specific actions can be restricted (by using roles and permissions). **npm** packages such as **jsonwebtoken** can create and verify JSON Web Tokens (JWT) for authentication and authorisation. 
> * API **middleware** restricts actions and veryfies authorisation based on user's role and permissions. For an unauthorised user, it returns a **403 Forbidden** response. 
---
_Step 3: Writing the business logic:_
* Define the functions to implement the business logic for each functional requirement.
* Ensure each function interacts with the database using **pg** to fetch or update data.
* Ensure each function has proper input validation checks and returns appropriate HTTP status codes and error messages.
---
_Step 4: Testing with Postman:_
* Use Postman to test the implemented API endpoints by sending HTTP requests and verifying the responses.
* Test different scenarios, including edge cases, and ensure the API works as expected.
* Ensure the API returns appropriate error messages and status codes for invalid requests.
---
_Step 5: Implementing role-based access control:_
* Define different user roles in the system (Admin, Teacher, and Student).
* Implement a middleware function that checks the user's role and permissions before allowing access to a protected API endpoint.
* Use JWT for authentication and store the user's role and permissions in the token's payload.
* Ensure each API endpoint has the required permissions to access it based on the user's role.
---
_Step 6: Deploying the application:_
* Deploy the application to a server (or hosting platform).
* Ensure the server environment has the necessary dependencies and configurations to run the app.
* Test the app in the production environment and fix any arising issues.
---
## **Testing**
After a successfully created  database connection pool using **pg** package, queries on the pool can be executed, for example, by using the **pool.query()**. 
Next, run index.js, using Node.js with the command 
```
node index.js
```
This will start the server.

> To test the server, open a web browser and enter the URL http://localhost:3000. If it is running, the response specified in the route handler function (i.e., 'Hello World!') will be visible.

To test and demonstrate the results of executing the APIs using Postman:
* Open Postman. In the top-left corner of the window, create a new request (click on "New").
* Select "POST" as the HTTP method from the dropdown next to the URL field.
* Enter the URL for the API endpoint in the field. For example, if the API endpoint for creating a new user is "http://localhost:3000/users", enter that in the URL field.
* Select "Body" below the URL field.
* Select "Raw", and choose "JSON" from the dropdown.
* In the text area, enter sample data for creating a user.
* Click "Send" to send the request.
* A response will be visible in the "Response" tab below, indicating whether the request was successful (‘Hello World!) or otherwise. 
* Repeat this process for testing other API endpoints.

## **Contributing**
* Pull requests are welcome. Please update code as appropriate.
### **LICENSE**
* This project is MIT licensed.
