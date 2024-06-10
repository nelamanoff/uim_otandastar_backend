const express = require('express');
const router = express.Router();
const db = require('../models');

router.get('/', async (req, res) => {
  const { cities_id } = req.query;
  if (!cities_id) {
    return res.status(400).send('cities_id parameter is required');
  }
  try {
    const uims = await db.Uim.findAll({
      where: { cities_id },
    });
    res.json(uims);
  } catch (error) {
    res.status(500).send(error.message);
  }
});

// Новый маршрут для получения Uim по id
router.get('/:id', async (req, res) => {
  const { id } = req.params;
  try {
    const uim = await db.Uim.findByPk(id, {
      include: [
        { model: db.Person, as: 'director' },
        { model: db.City, as: 'city' },
        { model: db.Event, as: 'events' },
        {
          model: db.Status,
          as: 'statusAssociation',
          include: [
            { model: db.Uim, as: 'warUim' },
            { model: db.Uim, as: 'peaceUim' }
          ]
        },
        { model: db.Person, as: 'person' }
      ],
    });
    if (!uim) {
      return res.status(404).send('Uim not found');
    }
    res.json(uim);
  } catch (error) {
    res.status(500).send(error.message);
  }
});

module.exports = router;
