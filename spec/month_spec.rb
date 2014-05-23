require '../dates'

describe 'month function' do

  it "converts a number to the corresponding month" do
    expect(month(1)).to  eq('January')
    expect(month(2)).to  eq('February')
    expect(month(3)).to  eq('March')
    expect(month(4)).to  eq('April')
    expect(month(5)).to  eq('May')
    expect(month(6)).to  eq('June')
    expect(month(7)).to  eq('July')
    expect(month(8)).to  eq('August')
    expect(month(9)).to  eq('September')
    expect(month(10)).to eq('October')
    expect(month(11)).to eq('November')
    expect(month(12)).to eq('December')
    expect(month(13)).to eq('')

  end

end
