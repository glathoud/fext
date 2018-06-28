/*for node.js*/

var assert = require('assert');

var fext_unittest = require('../test/fext_unittest').fext_unittest;

describe('all', function () {
    it('should have result.global true', function () {
        fext_unittest( function (result) {
            
            assert.equal( result.global, true );
            
        });
    });
});

