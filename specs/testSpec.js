describe("test", function(){
  var user = models.user;
  beforeEach(function(){
    models.sequelize.sync({ force: true });
  });

  it("should something something", function(){
    user.create({ email: "ok@test.com" });

    return user.all().then(function(result){
      expect(result.length).equal(1);
    });
  });
});
