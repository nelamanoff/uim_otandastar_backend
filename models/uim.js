module.exports = (sequelize, DataTypes) => {
  const Uim = sequelize.define('Uim', {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    body: {
      type: DataTypes.TEXT, 
      allowNull: true,
    },
    director_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'persons', // Имя таблицы 'persons'
        key: 'id',
      },
    },
    cities_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'cities', // Имя таблицы 'cities'
        key: 'id',
      },
    },
    event_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'event', // Имя таблицы 'event'
        key: 'id',
      },
    },
    status: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    persons_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'persons', // Имя таблицы 'persons'
        key: 'id',
      },
    },
  }, {
    tableName: 'uim', // Имя таблицы 'uim'
  });

  Uim.associate = (models) => {
    Uim.belongsTo(models.City, { foreignKey: 'cities_id', as: 'city' });
    Uim.belongsTo(models.Person, { foreignKey: 'director_id', as: 'director' });
    Uim.belongsTo(models.Event, { foreignKey: 'event_id', as: 'events' });
    Uim.belongsTo(models.Status, { foreignKey: 'status', as: 'statusAssociation' });
    Uim.belongsTo(models.Person, { foreignKey: 'persons_id', as: 'person' });
  };

  return Uim;
};
