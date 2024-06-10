const { Sequelize, DataTypes } = require('sequelize');
const config = require('../config/config.json');

const sequelize = new Sequelize(config.development.database, config.development.username, config.development.password, {
  host: config.development.host,
  dialect: config.development.dialect,
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;


db.Country = require('./country')(sequelize, DataTypes);
db.City = require('./city')(sequelize, DataTypes);
db.Uim = require('./uim')(sequelize, DataTypes);
db.Person = require('./person')(sequelize, DataTypes);
db.Status = require('./status')(sequelize, DataTypes);
db.Event = require('./event')(sequelize, DataTypes);


Object.keys(db).forEach(modelName => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});

module.exports = db;
