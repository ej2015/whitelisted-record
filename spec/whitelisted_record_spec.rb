require "spec_helper"

describe WhitelistedRecord::Decorator do
 
  let(:apple) { AppleDummy.new(color: 'red', taste: 'sweet', size: 'large', brand: 'BadApple') }
  let(:whitelist) { [:color, :expired?, :eat] }
  let(:whitelisted_apple) { described_class.new(apple, whitelist) }

  it "has a version number" do
    expect(WhitelistedRecord::Version::VERSION).not_to be nil
  end

  it "returns original values for whitelisted methods" do
    expect(whitelisted_apple.color).to eq('red')
  end

  it "returns nil for non-whitelisted methods" do
    expect(whitelisted_apple.size).to eq(nil)
  end

  it "works with arguments" do
    expect(whitelisted_apple.expired?(4)).to eq true
  end

  it "works with blocks" do
    expect(whitelisted_apple.eat { 4 }).to eq 4
  end

  it "works with #try" do
    expect(whitelisted_apple.try(:color)).to eq('red')
    expect(whitelisted_apple.try(:size)).to eq(nil)
  end

  context "use configuration" do
    before(:each) do
      WhitelistedRecord.configure do |config|
        config.whitelist = [:size]
      end
    end

    it 'uses whitelist from configuration' do
      whitelisted_apple = described_class.new(apple)
      expect(whitelisted_apple.size).to eq 'large'
    end
  end
end
