const express = require('express');
const router = express.Router();
const db = require('../models');

router.get('/:id', async (req, res) => {
  try {
    const uim = await db.Uim.findOne({
      where: { id: req.params.id },
      include: [
        { model: db.Person, as: 'director' },
        { model: db.City, as: 'city' },
        { model: db.Event, as: 'events' },
        { model: db.Status, as: 'statusAssociation' },
        { model: db.Person, as: 'person' },
      ],
    });

    if (!uim) {
      return res.status(404).json({ error: 'Uim not found' });
    }

    const status = await db.Status.findOne({
      where: { uim_id: req.params.id },
      include: [
        { model: db.Uim, as: 'warUim' },
        { model: db.Uim, as: 'peaceUim' },
      ],
    });

    res.json({ uim, status });
  } catch (error) {
    res.status(500).send(error.message);
  }
});

module.exports = router;
