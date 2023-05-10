const express = require('express');
const app = express();
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db = require('./db'); // assuming db.js exports a PostgreSQL database connection

app.use(express.json()); // enable parsing of JSON request bodies

// Define the /api/register route
app.post('/api/register', (req, res) => {
  // Extract the user information from the request body
  const { username, email, password } = req.body;

  // Hash the password using a secure one-way hashing algorithm like bcrypt
  const hashedPassword = bcrypt.hashSync(password, 10);

  // Insert the new user into the database
  db.query('INSERT INTO users (username, email, password) VALUES ($1, $2, $3)', [username, email, hashedPassword], (err, result) => {
    if (err) {
      // Return an error response if the user couldn't be created
      res.status(500).send({ message: 'Error creating user' });
    } else {
      // Return a success response if the user was created
      res.send({ message: 'User created successfully' });
    }
  });
});

// Define the /api/login route
app.post('/api/login', (req, res) => {
  // Extract the login information from the request body
  const { email, password } = req.body;

  // Query the database for the user with the given email
  db.query('SELECT * FROM users WHERE email = $1', [email], (err, result) => {
    if (err) {
      // Return an error response if there was an error querying the database
      res.status(500).send({ message: 'Error authenticating user' });
    } else if (result.rows.length === 0) {
      // Return an error response if no user was found with the given email
      res.status(401).send({ message: 'Incorrect email or password' });
    } else {
      // Compare the hashed password in the database with the password provided by the user
      const user = result.rows[0];
      const passwordMatch = bcrypt.compareSync(password, user.password);
      if (passwordMatch) {
        // Generate a JWT token with a payload containing the user's ID and email
        const token = jwt.sign({ userId: user.id, email: user.email }, 'my_secret_key', { expiresIn: '1h' });
        res.send({ token });
      } else {
        // Return an error response if the password provided by the user does not match the password in the database
        res.status(401).send({ message: 'Incorrect email or password' });
      }
    }
  });
});

// Define a middleware function to authenticate the JWT token
function authenticateToken(req, res, next) {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];
  if (token == null) {
    return res.status(401).send({ message: 'Authentication token missing' });
  }

  jwt.verify(token, 'my_secret_key', (err, decoded) => {
    if (err) {
      return res.status(403).send({ message: 'Authentication token invalid' });
    }
    req.user = decoded;
    next();
  });
}

// Define a protected route that requires authentication
app.get('/api/profile', authenticateToken, (req, res) => {
  res.send({ message: `Hello, ${req.user.email}!` });
});

// Start the server
app.listen(3000, ()