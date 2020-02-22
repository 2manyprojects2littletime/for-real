require 'minitest/autorun'
require 'minitest/spec'
require_relative '../payment'

describe Payment do
  it 'is true' do
    _(true).must_equal true
  end
  describe '#compound_rate_factor' do
    it 'will equal 1 when rate is 0' do
      subject = Payment.new(1, 1, 1)
      _(subject.compound_rate_factor(0,0)).must_equal 1
    end
  end
end
