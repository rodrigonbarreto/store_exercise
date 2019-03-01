require 'pry'
require_relative 'product'
require_relative 'checkout'
require_relative 'rules/bulk_purchase'
require_relative 'rules/one_item_free'
require_relative 'rules/product_addict'
require_relative 'product_repository'

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
