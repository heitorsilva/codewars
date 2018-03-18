const assert = require('assert');
const fn = require('../reversed_strings.js');

describe('Reversed Strings', () => {
  it('should reverse a string', () => {
    assert.equal(fn.reverse('world'), 'dlrow');
  });
});

