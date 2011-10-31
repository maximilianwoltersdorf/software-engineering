class GameController < ApplicationController
	require 'mogli'
  def index
  	size = Like.count
		@like1 = Like.find(1+rand(size-1))
		@like2 = Like.find(1+rand(size-1))
		if @like1 == @like2
			@like2 = Like.find(1+rand(size-1))
		end

  end

  def new
  end

  def create
  end

end
