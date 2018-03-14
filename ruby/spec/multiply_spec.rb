# frozen_string_literal: true

require 'spec_helper'
require_relative '../multiply'

describe 'Multiply' do
  context 'must receive A and B params' do
     it 'should return their product' do
       product = multiply(2, 3)
       expect(product).to eq(6)
     end
  end
end

