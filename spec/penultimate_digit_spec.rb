require './dates'

describe 'penultimate_digit function' do

  it "extracts the penultimate digit" do
    expect(penultimate_digit(1)).to   eq(0)
    expect(penultimate_digit(4)).to   eq(0)
    expect(penultimate_digit(17)).to  eq(1)
    expect(penultimate_digit(139)).to eq(3)
    expect(penultimate_digit(0)).to   eq(0)
  end

end