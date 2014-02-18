require './dates'

describe 'date_in_words function' do

  it "gives the date in words" do
    expect(date_in_words('1/1/2014')).to   eq('1st January, 2014')
    expect(date_in_words('11/3/2012')).to  eq('11th March, 2012')
    expect(date_in_words('30/11/2001')).to eq('30th November, 2001')
  end

end