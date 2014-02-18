require './names'

describe 'last_name function' do

  it "extracts the last name" do
    expect(last_name('Tom Close')).to eq('Close')

    expect(last_name('Ashok Menon')).to eq('Menon')
  end

end