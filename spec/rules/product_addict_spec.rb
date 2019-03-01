describe Rules::ProductAddict do
  describe 'check ProductAddict' do
    it 'coffee discount two thirds' do
      coffee = ProductRepository.find_by(code: 'CF1')
      basket = [coffee, coffee, coffee]
      expect(subject.apply(basket)).to eq(11.23)
    end
  end
end
