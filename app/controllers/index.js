// ------------------------------------------------
// ONE EXAMPLE OF A CONTROLLER (ROUTE HANDLING)
// ------------------------------------------------

var express = require('express');
var router = express.Router();
var models  = require('../models');

/* GET home page. */
router.get('/', function(request, response) {
  models.user.findAll().then(function(users) {
    response.render('index', {
      title: 'Express',
      users: users
    });
  });
});

router.post('/users', function(request, response) {
  models.user.create({
    email: request.body.email
  }).then(function(){ console.log("Weee") });
});

module.exports = router;
