const express = require('express');
const router = express.Router();
const db = require('../models');

router.get('/', async (req, res) => {
  try {
    const events = await db.Event.findAll();
    console.log('Fetched events:', events); 
    res.json(events);
  } catch (error) {
    console.error('Error fetching events:', error);
    res.status(500).send(error.message);
  }
});

module.exports = router;
