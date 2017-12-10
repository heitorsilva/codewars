const assert = require('assert');
const fn = require('../multiply.js');

describe('Multiply', () => {
  it('should return the product of a multiplication', () => {
    assert.equal(fn.multiply(2, 2), 4);
  });
});
