const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors'); 
const db = require('./models');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(cors());

// API routes
app.use('/api/companies', require('./routes/companies'));
app.use('/api/country', require('./routes/country'));
app.use('/api/cities', require('./routes/cities'));
app.use('/api/events', require('./routes/events'));
app.use('/api/persons', require('./routes/persons'));
app.use('/api/status', require('./routes/status'));
app.use('/api/uim', require('./routes/uim'));

// Проверка подключения к базе данных
db.sequelize.authenticate().then(() => {
  console.log('Connection has been established successfully.');
}).catch(err => {
  console.error('Unable to connect to the database:', err);
});


db.sequelize.sync({ force: false }).then(() => {
  app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
  });
});
