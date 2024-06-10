module.exports = (sequelize, DataTypes) => {
    const Country = sequelize.define('Country', {
      id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
      },
      name: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      lat: {
        type: DataTypes.FLOAT,
        allowNull: false,
      },
      lng: {
        type: DataTypes.FLOAT,
        allowNull: false,
      },
    }, {
      tableName: 'country',
    });
  
    Country.associate = (models) => {
      Country.hasMany(models.City, { foreignKey: 'country_id' });
    };
  
    return Country;
  };
  