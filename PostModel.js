const {  DataTypes } = require('sequelize');
const { sequelize } = require('./database.js')

const Posteo = sequelize.define('Posteo', {
    titulo: {
      type: DataTypes.STRING,
    },
    contenido: {
      type: DataTypes.STRING
    },
    imagen: {
        type: DataTypes.STRING
      },
      fechacrea: {
        type: DataTypes.DATE
      }
  }, {
    timestamps:false,
    freezeTableName:true,
    tableName:'posteo'
  });

  module.exports=Posteo;