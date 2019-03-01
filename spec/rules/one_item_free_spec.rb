describe Rules::OneItemFree do
  describe 'check One Item free' do
    it 'apply discount 3.11' do
      tea = ProductRepository.find_by(code: 'GR1')
      basket = [tea, tea, tea]
      expect(subject.apply(basket)).to eq(3.11)
    end

    it 'apply discount 6.22' do
      tea = ProductRepository.find_by(code: 'GR1')
      basket = [tea, tea, tea, tea]
      expect(subject.apply(basket)).to eq(6.22)
    end
  end
end
