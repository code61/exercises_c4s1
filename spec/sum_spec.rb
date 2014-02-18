require './more_functions'

describe 'sum array' do

  it "calculates normal sums" do
    expect(sum([1,2,3])).to eq(6)
    expect(sum([1,2,3,4,5,6])).to eq(21)
    expect(sum([100, 4])).to eq(104)
  end

  it "can deal with an empty array" do
    expect(sum([])).to eq(0)
  end


  it "calculates sums with a multiplier when provided" do
    expect(sum([1,2,3], -1)).to eq(-6)
    expect(sum([100]), 5).to eq(500)
  end

end