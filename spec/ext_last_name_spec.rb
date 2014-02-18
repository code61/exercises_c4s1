require './names'

describe 'last_name function' do

  it "extracts the last name" do
    expect(last_name('Tom Close')).to eq('Close')

    expect(last_name('Ashok Menon')).to eq('Menon')
  end

  it "can handle composite last names" do
    expect(last_name('Pierre de Fermat')).to eq('de Fermat')

    expect(last_name('Pieter van den Hoogenband')).to eq('van den Hoogenband')
  end

end