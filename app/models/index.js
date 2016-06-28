"use strict";

// ------------------------------------------------
// REQUIRE MODELS WITH THIS FILE
// Express seems to understand that index.js is the 'main' one
// ------------------------------------------------

var env       = process.env.NODE_ENV || "development";
var fs        = require("fs"); // File system
var path      = require("path"); // Directory paths
var db        = {}; // This is the hash/object that will be exported

var Sequelize = require("sequelize");
var sequelize = new Sequelize('postgres://localhost/bnb_' + env); // Defaults to dev database

fs
  .readdirSync(__dirname) // Returns an array of filenames in this current directory
  .filter(function(file) { // Filters out 'index.js'
    return (file.indexOf(".") !== 0) && (file !== "index.js");
  })
  .forEach(function(file) {
    // ------------------------------------------------
    // This bit collects all the contents of each 'export.module'
    // and appends them to each other in a new hash (called 'db')
    // ------------------------------------------------

    var model = sequelize.import(path.join(__dirname, file));
    db[model.name] = model;
  });

Object.keys(db).forEach(function(modelName) {
  // ------------------------------------------------
  // I think this bit creates the relationship between
  // tables in a database.
  //
  // eg. it associates 'users' with 'spaces' and makes public
  // 'reader' methods so you can view spaces that belong
  // to a user, or view the user (owner) of a space
  // ------------------------------------------------

  if ("associate" in db[modelName]) {
    db[modelName].associate(db);
  }
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

// ------------------------------------------------
// When 'models' is required anywhere, it returns a
// hash with all the models attached together
// ------------------------------------------------
module.exports = db;
