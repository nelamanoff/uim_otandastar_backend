module.exports = (sequelize, DataTypes) => {
    const City = sequelize.define('City', {
      name: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      country_id: {
        type: DataTypes.INTEGER,
        references: {
          model: 'Countries',
          key: 'id',
        },
      },
    });
  
    City.associate = (models) => {
      City.belongsTo(models.Country, { foreignKey: 'country_id' });
      City.hasMany(models.Uim, { foreignKey: 'cities_id' });
    };
  
    return City;
  };
  