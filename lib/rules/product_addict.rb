require_relative 'base_rule'
module Rules
  # buying 3 or more 'coffees', the price should drop to two thirds
  class ProductAddict < BaseRule
    PRODUCT__CODE = 'CF1'.freeze
    def apply(basket)
      number_products = count_product(PRODUCT__CODE, basket)
      number_products >= 3 ? number_products * product_discount : 0
    end

    private

    def product_discount
      product = ProductRepository.find_by(code: PRODUCT__CODE)
      two_thirds = (product.price * 2) / 3
      product.price - two_thirds
    end
  end
end
