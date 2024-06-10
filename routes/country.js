const express = require('express');
const router = express.Router();
const db = require('../models');

router.get('/', async (req, res) => {
  try {
    const countries = await db.Country.findAll();
    console.log('Fetched countries:', countries); 
    res.json(countries);
  } catch (error) {
    console.error('Error fetching countries:', error); 
    res.status(500).send(error.message);
  }
});

module.exports = router;
