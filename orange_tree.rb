# Orange Tree class
# Make an OrangeTree class that has a height method that returns its height
# and a one_year_passes method that, when called, ages the tree one year.

# Each year the tree grows taller and after some number of years, the tree should die.

# For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees.

# Of course, you should be able to count_the_oranges (which returns the number of oranges in a tree)
# pick_an_orange (which reduces the @orangecount by 1) and returns a string telling you how delicious the orange was - or else it just tells you that there are no more oranges to pick this year 
# Make sure any oranges you don't pick one year fall off before the next year

class OrangeTree
	# Make an OrangeTree class that has a height method that returns its height
	attr_reader :height, :fruit, :age
	
	def initialize
		@height = 0 
		@age = 0
		@fruit = 0
	end
	
	# one_year_passes method that, when called, ages the tree one year.
	def one_year_passes
		# Each year the tree grows taller and after some number of years, the tree should die.
		if @age == 50
			puts "Your tree has died a tragic death at the hands of Cas, Jess, and Resdan. Please find the truth."
		else
			@age += 1
			@height += 1
			# Make sure any oranges you don't pick one year fall off before the next year
			puts "#{@fruit} many oranges fell off the tree."
			@fruit = 0

			
			# For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees.
			# Greater cutoff ages appear earlier in the if statements. Illustrative example for why this is:
			# Suppose @age = 45. Then it passes the @age >= 5 test, and only adds 2 fruit instead of 16.
			if @age >= 45
				@fruit += 2**4
			elsif @age >= 25
				@fruit += 2**3
			elsif @age >= 15
				@fruit += 2**2
			elsif @age >= 5
				@fruit += 2**1
			end # ends fruit adding if
			puts "The tree grew #{@fruit} new oranges."
		end # ends whether tree is dead if
	end
	
	# pick_an_orange (which reduces the @orangecount by 1) and returns a string telling you how delicious the orange was - or else it just tells you that there are no more oranges to pick this year 
	def pick_an_orange
		if @fruit == 0 
			puts "There ain't no oranges on dis here tree."
		else @fruit -= 1
			puts "Dayumn, that was a juicy orange."
			puts "There are #{@fruit} orange(s) left."
		end
	end
	
end
