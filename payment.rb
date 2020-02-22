# frozen_string_literal: true

class Payment
  attr_reader :payment

  def initialize(principal, rate, periods)
    compound_rate_factor = compound_rate_factor(rate, periods)
    @payment = principal * ((rate * compound_rate_factor) / (compound_rate_factor - 1))
  end

  def compound_rate_factor(rate, periods)
    (1 + rate) ** periods
  end

  def to_s
    @payment.round(2)
  end

end
