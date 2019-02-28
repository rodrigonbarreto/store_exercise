describe Rules::OneItemFree do
  describe 'check One Item free' do
    it 'apply disccoun 3.11' do
      tea = ProductRepository.find_by(code: 'GR1')
      basket = [tea, tea, tea]
      expect(subject.apply(basket)).to eq(3.11)
    end

    it 'apply disccoun 6.22' do
      tea = ProductRepository.find_by(code: 'GR1')
      basket = [tea, tea, tea, tea]
      expect(subject.apply(basket)).to eq(6.22)
    end
  end
end
