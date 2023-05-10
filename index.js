const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const userRoutes = require('/Users/natashasmith/Desktop/nodejs/userRoutes');

// Set up middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Mount API routes
app.use('/api/users', userRoutes);

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`);
});