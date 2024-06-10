module.exports = (sequelize, DataTypes) => {
  const Person = sequelize.define('Person', {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    director: {
      type: DataTypes.BOOLEAN,
      allowNull: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    img: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    biography: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    social_id: {
      type: DataTypes.STRING,
      allowNull: true,
    },
  }, {
    tableName: 'persons',
  });

  Person.associate = (models) => {
    Person.hasMany(models.Uim, { foreignKey: 'director_id', as: 'directed_uims' });
    Person.hasMany(models.Uim, { foreignKey: 'persons_id', as: 'person_uims' });
  };

  return Person;
};
