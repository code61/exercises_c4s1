require './names'

describe 'first_name function' do

  it "extracts the first name" do
    expect(first_name('Tom Close')).to eq('Tom')

    expect(first_name('Ashok Menon')).to eq('Ashok')
  end

end