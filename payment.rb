rate = 0.01
principal = 100
periods = 100
compound_rate_factor = (1 + rate)**periods
payment = principal*((rate*compound_rate_factor)/(compound_rate_factor - 1))
