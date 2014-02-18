require './more_functions'

describe 'multiply_and_sum function' do

  it "calculates a * b + a + b" do
    expect(multiply_and_sum( 1, 2)).to eq(5)
    expect(multiply_and_sum( 3, 4)).to eq(19)
    expect(multiply_and_sum(-1, 2)).to eq(-1)
  end

end