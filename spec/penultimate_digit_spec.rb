require './dates'

describe 'penultimate_digit function' do

  it "extracts the penultimate digit" do
    expect(last_digit(1)).to   eq(0)
    expect(last_digit(4)).to   eq(0)
    expect(last_digit(17)).to  eq(1)
    expect(last_digit(139)).to eq(3)
    expect(last_digit(0)).to   eq(0)
  end

end