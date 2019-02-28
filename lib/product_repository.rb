require 'YAML'

class ProductRepository
  class << self
    # find_by(code: 'code') ,find_by(name: 'name'), find_by(price: 222)
    def find_by(hash)
      key, value = hash.first
      all.detect do |product|
        product.send(key) == value
      end
    end

    def all
      @collection = YAML.load_file(File.join(File.dirname(__FILE__), 'data/products.yml')).map do |product|
        Product.new(product)
      end
    end
  end
end
