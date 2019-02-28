
describe ProductRepository do
  describe 'check class ProductRepository' do
    it 'find_by_code' do
      product = ProductRepository.find_by(code: 'GR1')
      expect(product.name).to eq('Green tea')
      expect(product.price).to eq(3.11)
    end

    it 'find_by_name' do
      product = ProductRepository.find_by(name: 'Green tea')
      expect(product.code).to eq('GR1')
      expect(product.price).to eq(3.11)
    end

    it 'find_by_price' do
      product = ProductRepository.find_by(price: 3.11)
      expect(product.code).to eq('GR1')
      expect(product.name).to eq('Green tea')
    end
  end
end
