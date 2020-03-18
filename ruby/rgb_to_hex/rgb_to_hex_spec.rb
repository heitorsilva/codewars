# frozen_string_literal: true

require 'spec_helper'
require_relative 'rgb_to_hex'

describe 'RGB to Hex Conversion' do
  context 'when one or more params are nil' do
    it 'should return empty string' do
      expect(rgb(nil, 255, 255)).to eq('')
    end
  end

  context 'when a param is negative' do
    it 'should round to zero' do
      expect(rgb(-25, 255, 255)).to eq('00FFFF')
    end
  end

  context 'when a param is greater than 255' do
    it 'should round to 255' do
      expect(rgb(-25, 255, 300)).to eq('00FFFF')
    end
  end

  context 'when all params are between 0 and 255' do
    it 'should convert to equivalent Hex value' do
      expect(rgb(0, 0, 0)).to eq('000000')
      expect(rgb(173, 255, 47)).to eq('ADFF2F')
    end
  end
end
