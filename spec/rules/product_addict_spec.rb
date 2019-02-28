describe Rules::ProductAddict do
  describe 'check One Item free' do
    it 'apply disccoun 3.11' do
      coffee = ProductRepository.find_by(code: 'CF1')
      basket = [coffee, coffee, coffee]
      expect(subject.apply(basket)).to eq(11.23)
    end
  end
end
