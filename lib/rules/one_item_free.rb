require_relative 'base_rule'

module Rules
  # Buy-one-get-one-free offers.
  class OneItemFree < BaseRule
    def apply(basket)
      count_product('GR1', basket) / 2 * 3.11
    end
  end
end
