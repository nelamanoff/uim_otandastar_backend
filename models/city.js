module.exports = (sequelize, DataTypes) => {
  const City = sequelize.define('City', {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    country_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'country', 
        key: 'id',
      },
    },
  }, {
    tableName: 'cities', 
  });

  City.associate = (models) => {
    City.belongsTo(models.Country, { foreignKey: 'country_id' });
    City.hasMany(models.Uim, { foreignKey: 'cities_id', as: 'uims' });
  };

  return City;
};
