class Like < ActiveRecord::Base
	def self.random
		size = Like.count
		@like1 = Like.find(rand(size))
		@like2 = Like.find(rand(size))
		if @like1.name == @like2.name
			@like2 = Like.find(rand(size))
		end
	end
end
