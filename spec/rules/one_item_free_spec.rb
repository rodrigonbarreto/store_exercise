describe Rules::OneItemFree do
  describe 'check One Item free' do
    it 'apply disccoun 3.11' do
      tea1 = ProductRepository.find_by(code: 'GR1')
      tea2 = ProductRepository.find_by(code: 'GR1')
      tea3 = ProductRepository.find_by(code: 'GR1')
      basket = [tea1, tea2, tea3]
      expect(subject.apply(basket)).to eq(3.11)
    end

    it 'apply disccoun 6.22' do
      tea1 = ProductRepository.find_by(code: 'GR1')
      tea2 = ProductRepository.find_by(code: 'GR1')
      tea3 = ProductRepository.find_by(code: 'GR1')
      tea4 = ProductRepository.find_by(code: 'GR1')
      basket = [tea1, tea2, tea3, tea4]
      expect(subject.apply(basket)).to eq(6.22)
    end
  end
end
