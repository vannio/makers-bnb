var Sequelize = require("sequelize");

var sequelize = new Sequelize('postgres://localhost/bnb_development');

var User = sequelize.define("user", {
  email: {
    type: sequelize.STRING,
    validate: {
      isEmail: true,
      notEmpty: true,
      length: [1, 255]
    }
  }
});

describe('new users', function() {
  it('creates a new user', function() {
    User.create({
      email: 'cameron@cameron.com'
    });
    expect(User.findAll().length).equal(1)
  });
});
