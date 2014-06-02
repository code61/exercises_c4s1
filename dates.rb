
# Returns the nth month in words
#
#   month(1)  #=> 'January'
#   month(2)  #=> 'February'
#   month(13) #=> ''
#
def month(n)
	months_names = ['January','February','March','April','May','June','July','August','September','October','November','December']
	months_ordinals = [1,2,3,4,5,6,7,8,9,10,11,12]
	months_hash = Hash[months_ordinals.zip(months_names)]
	months_hash.default = ''
	months_hash[n]
end


# Returns the last digit of a whole number
#   
#   last_digit(5)   #=> 5
#   last_digit(11)  #=> 1
#   last_digit(119) #=> 9
#   
# You should assume the function will always be 
# called with a non-negative whole number
def last_digit(n)
	n%10	
end

# Returns the last-but-one digit of a whole number
#   
#   penultimate_digit(5)   #=> 0
#   penultimate_digit(11)  #=> 1
#   penultimate_digit(119) #=> 1
#   
# You should assume the function will always be 
# called with a non-negative whole number
def penultimate_digit(n)
	last_digit(n/10)
end

# Returns the appropriate 'th', 'nd', 'rd' or 'st' for
# a whole number
#
#   ordinal_suffix(1)   #=> 'st'
#   ordinal_suffix(3)   #=> 'rd'
#   ordinal_suffix(5)   #=> 'th'
#   ordinal_suffix(11)  #=> 'th'
#   ordinal_suffix(22)  #=> 'nd'
#   ordinal_suffix(100) #=> 'th'
#
# You should assume the function will always be 
# called with a non-negative whole number
def ordinal_suffix(n)
	m = last_digit(n)
	if penultimate_digit(n) == 1 # must take care of the 'teens', which are all '--nth'
		'th'
	else
		suffixes = ['th','st','nd','rd','th','th','th','th','th','th','th']
		suffixes[m]
	end
end


# Returns the date in words
#
#   date_in_words('1/2/2014')   #=> '1st February, 2014'
#   date_in_words('12/11/2014') #=> '12th November, 2014'
#
def date_in_words(date_string)
	s = date_string.split('/')
	d = s[0]
	m = s[1]
	y = s[2]
	[d,ordinal_suffix(d.to_i),' ',month(m.to_i),', ',y].join
end
