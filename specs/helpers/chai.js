
var chai = require('chai');
var directory = process.cwd()+'/app/models/';

require (directory + 'Calculator.js');

chai.config.includeStack = true;

global.expect = chai.expect;
global.AssertionError = chai.AssertionError;
global.Assertion = chai.Assertion;
global.assert = chai.assert;
