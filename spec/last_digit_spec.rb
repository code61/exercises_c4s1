require './dates'

describe 'last_digit function' do

  it "extracts the last digit" do
    expect(last_digit(1)).to   eq(1)
    expect(last_digit(4)).to   eq(4)
    expect(last_digit(17)).to  eq(7)
    expect(last_digit(139)).to eq(9)
    expect(last_digit(0)).to   eq(0)
  end

end