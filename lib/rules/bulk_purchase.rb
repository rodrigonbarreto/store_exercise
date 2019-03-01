require_relative 'base_rule'

module Rules
  # buying 3 or more fruit(strawberries), the price should drop to 0.50 cents discount
  class BulkPurchase < BaseRule
    PRODUCT_CODE = 'SR1'.freeze
    DISCOUNT_VALUE = 0.50

    def apply(basket)
      number_products = count_product(PRODUCT_CODE, basket)
      number_products >= 3 ? number_products * DISCOUNT_VALUE : 0
    end
  end
end
