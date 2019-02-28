
describe Product do
  describe 'check class Product' do
    it 'name price code' do
      subject.name = 'coffee'
      subject.price = 11.23
      subject.code = 'CF1'

      expect(subject.name).to eq('coffee')
      expect(subject.price).to eq(11.23)
      expect(subject.code).to eq('CF1')
    end
    it 'check hash constructor' do
      hash = { 'name' => 'Green tea', 'price' => 3.11, 'code' => 'GR1' }
      coffe = Product.new(hash)
      expect(coffe.name).to eq('Green tea')
      expect(coffe.price).to eq(3.11)
      expect(coffe.code).to eq('GR1')
    end
  end
end
