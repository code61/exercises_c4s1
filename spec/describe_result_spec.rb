# Write your test here!

require './more_functions'

describe 'describe_result function' do

  it "describes a goalless draw correctly" do
		expect(describe_result('Man U', 'Arsenal', 0, 0)).to eq("Man U drew with Arsenal, 0 - 0")
	end

	it "describes a score draw correctly" do
		expect(describe_result('Man U', 'Arsenal', 3, 3)).to eq("Man U drew with Arsenal, 3 - 3")
	end

	it "desccribes a modest win by team1 correctly" do
		expect(describe_result('Chelsea', 'Man City', 1, 0)).to eq("Chelsea beat Man City, 1 - 0")
	end

	it "describes a modest win by team2 correctly" do
		expect(describe_result('Chelsea', 'Man City', 0, 2)).to eq("Man City beat Chelsea, 2 - 0")
	end
	
	it "describes a thrashing by team1 correctly" do
		expect(describe_result('Tottenham', 'Man City', 1, 5)).to eq("Man City thrashed Tottenham, 5 - 1")
	end

	it "describes a thrashing by team2 correctly" do
		expect(describe_result('Chelsea', 'Norwich City', 0, 12)).to eq("Norwich City thrashed Chelsea, 12 - 0")
	end
	
end

	

