class Checkout
  attr_reader :basket

  def initialize(pricing_rules)
    @basket = []
    @pricing_rules = pricing_rules
  end

  def scan(product_code)
    product = ProductRepository.find_by(code: product_code.upcase)
    raise "Product code: #{product_code} does not exist" unless product

    @basket << product
  end

  def total
    total_result = @basket.inject(0) { |total, product| total + product.price }
    discount_result = @pricing_rules.inject(0) { |discount, rule| discount + rule.apply(@basket) }
    result = total_result - discount_result
    result.round(2)
  end
end
