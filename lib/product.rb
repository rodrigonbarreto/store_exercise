class Product
  attr_accessor :name, :price, :code

  def initialize(params = {})
    @name = params['name'] || nil
    @price = params['price'] || nil
    @code = params['code'] || nil
  end
end
