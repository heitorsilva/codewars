from mamba import description, context, it
from expects import expect, equal

from multiply import multiply

with description('Multiply') as self:
  with context('must receive A and B params'):
    with it('should return their product'):
      product = multiply(2, 3)
      expect(product).to(equal(6))
