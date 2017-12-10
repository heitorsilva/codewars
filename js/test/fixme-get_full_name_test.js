const assert = require('assert');
const Dinglemouse = require('../fixme-get_full_name.js');

describe('Dinglemouse', () => {
  let dinglemouse;

  describe('when there is first and last name', () => {
    before(() => {
      dinglemouse = new Dinglemouse('Heitor', 'Silva');
    });

    it('should return fullname', () => {
      assert.equal(dinglemouse.getFullName(), 'Heitor Silva');
    });
  });

  describe('when there is just the first name', () => {
    before(() => {
      dinglemouse = new Dinglemouse('Heitor', null);
    });

    it('should return it', () => {
      assert.equal(dinglemouse.getFullName(), 'Heitor');
    });
  });

  describe('when there is just the last name', () => {
    before(() => {
      dinglemouse = new Dinglemouse(null, 'Silva');
    });

    it('should return it', () => {
      assert.equal(dinglemouse.getFullName(), 'Silva');
    });
  });

  describe('when there is not the first and last names', () => {
    before(() => {
      dinglemouse = new Dinglemouse(null, null);
    });

    it('should return an empty string', () => {
      assert.equal(dinglemouse.getFullName(), '');
    });
  });
});
