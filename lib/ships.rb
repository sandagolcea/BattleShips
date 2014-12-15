class Ships

	def initialize
		# length = 
		@destroyed = false
	end

	def destroyed?
		@destroyed
	end
	
	def destroy!
		@destroyed = true
	end

end