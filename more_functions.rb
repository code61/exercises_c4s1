# Returns a * b + a + b
#
#  multiply_and_sum( 1, 2) #=> 5
#  multiply_and_sum( 3, 4) #=> 19
#  multiply_and_sum(-1, 2) #=> -1
#
def multiply_and_sum(a, b)
	( a * b ) + a + b
end

# Says hello, defaulting to 'Hello World!'
#
#  hello('Tom') #=> "Hello Tom!"
#  hello        #=> "Hello World!"
#
def hello(name = 'World')
	"Hello #{name}!"
end


# Writes a sentence explaining what happens when you integer divide a by b
# [You'll need to look back at / and % from the first ruby session].
#
#  explain_integer_divide( 8, 4) #=> "8 divided by 4 is 2 remainder 0"
#  explain_integer_divide( 1, 5) #=> "1 divided by 5 is 0 remainder 1"
#  explain_integer_divide(33, 7) #=> "33 divided by 7 is 4 remainder 5"
#  
def explain_integer_divide(a, b)
	quotient = a / b
	remainder = a % b 
	"#{a} divided by #{b} is #{quotient} remainder #{remainder}"
end


# Sums an array. If given a multiplier, multiplies the result
#
#  sum([1, 2, 3])      #=> 6
#  sum([4, 5, 6], -1)  #=> -15
#
def sum(array, multiplier=1)
	sum = 0
	array.each do |i|
		sum = sum + i
	end
	sum * multiplier
end


# Describes the result of a football match
#
#  describe_result('Man U', 'Arsenal', 0, 0) #=> "Man U drew with Arsenal, 0 - 0"
#  describe_result('Chelsea', 'Man City', 1, 0) #=> "Chelsea beat Man City, 1 - 0"
#  describe_result('Chelsea', 'Man City', 0, 2) #=> "Man City beat Chelsea, 2 - 0"
#  describe_result('Tottenham', 'Man City', 1, 5) #=> "Man City thrashed Tottenham, 5 - 1"
#
# [A thrashing is where one team beats another by 3 or more goals]
#
def describe_result(team1, team2, score1, score2)
	goal_difference = score1 - score2

	if goal_difference == 0
	  nature = 'drew with'
		victor = team1
		loser = team2
	else
		if goal_difference > 3 
			nature = 'thrashed'
			victor = team1
			loser = team2
		else
			if goal_difference > 0
				nature = 'beat'
				victor = team1
				loser = team2
			else
				if goal_difference < -3
					nature = 'thrashed'
					victor = team2
					loser = team1
				else
					if goal_difference < 0
						nature ='beat'
						victor = team2
						loser = team1
					end		
				end
			end
		end
	end

	if goal_difference < 0
		victor_score = score2
		loser_score = score1
	else
		victor_score = score1
		loser_score = score2
	end

		"#{victor} #{nature} #{loser}, #{victor_score} - #{loser_score}"

end
# You'll need to write your own test for this in spec/describe_result_spec.rb
