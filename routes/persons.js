const express = require('express');
const router = express.Router();
const db = require('../models');

router.get('/', async (req, res) => {
  try {
    const persons = await db.Person.findAll();
    res.json(persons);
  } catch (error) {
    res.status(500).send(error.message);
  }
});

module.exports = router;
