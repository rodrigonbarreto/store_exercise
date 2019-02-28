module Rules
  # Base class Rule
  class BaseRule
    def apply(_basket); end

    private

    def count_product(code, basket)
      basket.inject(0) do |count, product|
        product.code == code ? count + 1 : count
      end
    end
  end
end
