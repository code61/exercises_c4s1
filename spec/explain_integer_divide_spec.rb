require './more_functions'

describe 'explain integer divide function' do

  it "explains the sums in words" do
    expect(explain_integer_divide( 8, 4)).to eq("8 divided by 4 is 2 remainder 0")
    expect(explain_integer_divide( 1, 5)).to eq("1 divided by 5 is 0 remainder 1")
    expect(explain_integer_divide(33, 7)).to eq("33 divided by 7 is 4 remainder 5")
  end

end