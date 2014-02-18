require './dates'

describe 'ordinal suffix function' do

  it "works for single digits" do
    expect(ordinal_suffix(0)).to eq('th')
    expect(ordinal_suffix(1)).to eq('st')
    expect(ordinal_suffix(2)).to eq('nd')
    expect(ordinal_suffix(3)).to eq('rd')
    expect(ordinal_suffix(4)).to eq('th')
    expect(ordinal_suffix(5)).to eq('th')
    expect(ordinal_suffix(6)).to eq('th')
    expect(ordinal_suffix(7)).to eq('th')
    expect(ordinal_suffix(8)).to eq('th')
    expect(ordinal_suffix(9)).to eq('th')
  end

  it "works for 10 - 20" do
    expect(ordinal_suffix(10)).to eq('th')
    expect(ordinal_suffix(11)).to eq('th')
    expect(ordinal_suffix(12)).to eq('th')
    expect(ordinal_suffix(13)).to eq('th')
    expect(ordinal_suffix(14)).to eq('th')
    expect(ordinal_suffix(15)).to eq('th')
    expect(ordinal_suffix(16)).to eq('th')
    expect(ordinal_suffix(17)).to eq('th')
    expect(ordinal_suffix(18)).to eq('th')
    expect(ordinal_suffix(19)).to eq('th')
  end

  it "works for larger numbers" do
    expect(ordinal_suffix(21)).to   eq('st')
    expect(ordinal_suffix(111)).to  eq('th')
    expect(ordinal_suffix(1000)).to eq('th')
    expect(ordinal_suffix(39)).to   eq('th')
    expect(ordinal_suffix(103)).to  eq('rd')
  end


end