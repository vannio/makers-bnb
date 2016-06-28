var express = require('express');
var router = express.Router();
var models  = require('../models');

/* GET home page. */
router.get('/', function(req, res) {
  models.user.findAll().then(function(users) {
    console.log(users);
    res.render('index', {
      title: 'Express',
      users: users
    });
  });
});

module.exports = router;
