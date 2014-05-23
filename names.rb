

# Extracts the first name from a full name.
#
#   first_name('Tom Close') #=> 'Tom'
#   first_name('Alan Jones') #=> 'Alan'
#
def first_name(full_name)
	full_name.split.first
end


# Extracts the first name from a full name.
#
#   last_name('Tom Close') #=> 'Close'
#   last_name('Alan Jones') #=> 'Jones'
#
#   [Extension]
#   last_name('Pierre de Fermat') #=> 'de Fermat'
#
def last_name(full_name)
	# full_name.split.last
	full_name.split[1..-1].join(' ')
end
