require './more_functions'

describe 'hello function' do

  it "says hello when given a name" do
    expect(hello('Tom')).to eq('Hello Tom!')
    expect(hello('Dave')).to eq('Hello Dave!')
  end

  it "defaults to hello world" do
    expect(hello).to eq('Hello World!')
  end

end