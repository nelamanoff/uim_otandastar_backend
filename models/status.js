module.exports = (sequelize, DataTypes) => {
  const Status = sequelize.define('Status', {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    war_uim_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'uim',
        key: 'id',
      },
    },
    peace_uim_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'uim',
        key: 'id',
      },
    },
    uim_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'uim', 
        key: 'id',
      },
    },
  }, {
    tableName: 'status',
  });

  Status.associate = (models) => {
    Status.belongsTo(models.Uim, { foreignKey: 'uim_id', as: 'uim' });
    Status.belongsTo(models.Uim, { foreignKey: 'war_uim_id', as: 'warUim' });
    Status.belongsTo(models.Uim, { foreignKey: 'peace_uim_id', as: 'peaceUim' });
  };

  return Status;
};
