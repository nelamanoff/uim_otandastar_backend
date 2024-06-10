// routes/companies.js
const express = require('express');
const router = express.Router();
const db = require('../models');

router.get('/', async (req, res) => {
  try {
    const companies = await db.Uim.findAll({
      include: [
        { model: db.Person, as: 'director' },
        { model: db.City, as: 'city' },
        { model: db.Event, as: 'events' },
        { model: db.Status, as: 'status' },
      ],
    });
    res.json(companies);
  } catch (error) {
    res.status(500).send(error.message);
  }
});

module.exports = router;
