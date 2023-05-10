const { Pool } = require('pg');
const bcrypt = require('bcrypt');

// Create a PostgreSQL database connection pool
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false
  }
});

// Define the users model
const users = {
  // Create a new user
  async create(username, email, password) {
    try {
      const hashedPassword = await bcrypt.hash(password, 10);
      const query = {
        text: 'INSERT INTO users (username, email, password) VALUES ($1, $2, $3) RETURNING *',
        values: [username, email, hashedPassword]
      };
      const { rows } = await pool.query(query);
      return rows[0];
    } catch (err) {
      console.error(err);
      throw err;
    }
  },

  // Find a user by their email address
  async findByEmail(email) {
    try {
      const query = {
        text: 'SELECT * FROM users WHERE email = $1',
        values: [email]
      };
      const { rows } = await pool.query(query);
      return rows[0];
    } catch (err) {
      console.error(err);
      throw err;
    }
  },

  // Find a user by their username
  async findByUsername(username) {
    try {
      const query = {
        text: 'SELECT * FROM users WHERE username = $1',
        values: [username]
      };
      const { rows } = await pool.query(query);
      return rows[0];
    } catch (err) {
      console.error(err);
      throw err;
    }
  },

  // Find a user by their ID
  async findById(id) {
    try {
      const query = {
        text: 'SELECT * FROM users WHERE id = $1',
        values: [id]
      };
      const { rows } = await pool.query(query);
      return rows[0];
    } catch (err) {
      console.error(err);
      throw err;
    }
  }
};

// Export the models
module.exports = {
  users
};