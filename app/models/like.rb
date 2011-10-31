class Like < ActiveRecord::Base
	def self.random
		size = Like.count
		@like1 = Like.find(1+rand(size))
		@like2 = Like.find(1+rand(size))
		if @like1 == @like2
			@like2 = Like.find(rand(size))
		end
	end
end
