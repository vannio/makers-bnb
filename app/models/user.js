"use strict";

var modelDefinition = function(sequelize, DataTypes) {
  var User = sequelize.define("user", {
    email: DataTypes.STRING
  });

  return User;
};

// ------------------------------------------------
// This doesn't export the variable 'User'
// It exports a wrapper function that sequelize can use
// to create tables in a database
// ------------------------------------------------

module.exports = modelDefinition;
