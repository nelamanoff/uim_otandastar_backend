const express = require('express');
const router = express.Router();
const db = require('../models');

router.get('/', async (req, res) => {
  const { country_id } = req.query;
  console.log('Received country_id:', country_id); 
  if (!country_id) {
    return res.status(400).send('country_id parameter is required');
  }
  try {
    const cities = await db.City.findAll({
      where: { country_id },
    });
    res.json(cities);
  } catch (error) {
    res.status(500).send(error.message);
  }
});

module.exports = router;
