require_relative 'base_rule'

module Rules
  # Buy-one-get-one-free offers.
  class OneItemFree < BaseRule
    PRODUCT__CODE = 'GR1'.freeze

    def apply(basket)
      count_product(free_product.code, basket) / 2 * free_product.price
    end

    private

    def free_product
      ProductRepository.find_by(code: PRODUCT__CODE)
    end
  end
end
