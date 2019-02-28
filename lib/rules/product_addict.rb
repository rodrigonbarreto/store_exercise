require_relative 'base_rule'
module Rules
  # buying 3 or more 'coffees', the price should drop to two thirds
  class ProductAddict < BaseRule
    def apply(basket)
      number_strawberries = count_product('CF1', basket)
      number_strawberries >= 3 ? number_strawberries * product_discount : 0
    end

    private

    def product_discount
      product = ProductRepository.find_by(code: 'CF1')
      two_thirds = (product.price * 2) / 3
      product.price - two_thirds
    end
  end
end
