

describe Rules::BulkPurchase do
  describe 'check Bulk Purchase' do
    it 'strawberries discount' do
      strawberry = ProductRepository.find_by(code: 'SR1')
      basket = [strawberry, strawberry, strawberry]
      expect(subject.apply(basket)).to eq(1.5)
    end
  end
end
