describe Checkout do
  before :each do
    pricing_rules = [
      Rules::OneItemFree.new,
      Rules::BulkPurchase.new,
      Rules::ProductAddict.new
    ]

    @checkout = Checkout.new(pricing_rules)
  end

  describe 'CEO rule' do
    it '#GR1 SR1 GR1 GR1 CF1 -> 22.45' do
      %w[GR1 SR1 GR1 GR1 CF1].each do |item|
        @checkout.scan(item)
      end
      expect(@checkout.total).to eq(22.45)
    end

    it '#GR1 GR1 -> 3.11' do
      %w[GR1 GR1].each do |item|
        @checkout.scan(item)
      end
      expect(@checkout.total).to eq(3.11)
    end
  end
  describe 'COO rule' do
    it '#SR1 SR1 GR1 SR1 -> 16.61' do
      %w[SR1 SR1 GR1 SR1].each do |item|
        @checkout.scan(item)
      end
      expect(@checkout.total).to eq(16.61)
    end
  end
  describe 'CTO rule' do
    it '#GR1 CF1 SR1 CF1 CF1 -> 30.57' do
      %w[GR1 CF1 SR1 CF1 CF1].each do |item|
        @checkout.scan(item)
      end
      expect(@checkout.total).to eq(30.57)
    end
  end
end
