# **SQLtoAPI: Functional APIs with Role-Based Access Control from Postgres DB using NodeJS** 
## **Motivation:**
* Gaining practical experience developing SQL queries and APIs using NodeJS and Express. 
* Improving the knowledge of remote database connections and role-based access control.

## **Specific Goal(s):**
* Enhancing skills in developing APIs for functional requirements of using SQL queries and NodeJS. 
* Practicing implementing role-based access control for specific actions.

## **Problem(ss) solved:**
* Developing APIs to extract the required information from a database to meet the functional requirements of a college scenario. 
* Providing a solution for implementing role-based access control to restrict access for specific actions based on user roles.

## **Takeaways:**
* Creating SQL queries to extract the required information from a MySQL database. 
* Gaining experience in using NodeJS and Express to create an API to support the functional requirements of a college scenario. 
* Implementing role-based access control using middleware functions to restrict access to specific APIs based on user roles. 
* Testing and demonstrating the functionalities of their APIs using Postman.

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

3.	Set up the PostgreSQL database (using pgAdmin4) and create the necessary tables and constraints.
---
_Step 2: Creating the API endpoints:_
* Define the required API endpoints for each functional requirement.
* Implement the logic for each endpoint using **Express.js** and **pg**.
 
* Ensure each API endpoint has validation checks for user authentication and authorisation.
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
### **LICENSE**
* MIT
