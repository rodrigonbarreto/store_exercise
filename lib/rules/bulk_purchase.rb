require_relative 'base_rule'

module Rules
  # buying 3 or more fruit(strawberries), the price should drop to 0.50 cents discounts
  class BulkPurchase < BaseRule
    PRODUCT__CODE = 'SR1'.freeze

    def apply(basket)
      number_strawberries = count_product(PRODUCT__CODE, basket)
      number_strawberries >= 3 ? number_strawberries * 0.50 : 0
    end
  end
end
