require_relative 'product'
require_relative 'checkout'
require_relative 'rules/bulk_purchase'
require_relative 'rules/one_item_free'
require_relative 'rules/product_addict'
require_relative 'product_repository'
require 'pry'
pricing_rules = [
  Rules::OneItemFree.new,
  Rules::BulkPurchase.new,
  Rules::ProductAddict.new
]

def checkout(products, pricing_rules)
  @checkout = Checkout.new(pricing_rules)
  products.each do |item|
    @checkout.scan(item)
  end
  @checkout.total
end

puts checkout(ARGV, pricing_rules)

# 'GR1' 'SR1' 'GR1' 'GR1' 'CF1' -> 22.45

# 'GR1' 'GR1' -> 3.11
#
# 'SR1' 'SR1' 'GR1' 'SR1' -> 16.61
#
# 'GR1' 'CF1' 'SR1' 'CF1' 'CF1' -> 30.57
