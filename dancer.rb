#Code will go here to make tests pass

class Dancer
	attr_reader :name
	attr_accessor :age, :card, :tutu

	def initialize(name, age)
		@name = name
		@age = age
		@card = []
	end


	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(name)
		
		if @card.length < 10
			@card << name
		else
			"The dance queue is full."
		end	


	end

	def begin_next_dance
		"Now dancing with #{@card.shift}."
	end

	def leap
		"*leaps*"
	end



end
