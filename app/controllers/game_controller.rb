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
  	Game.create(:chosen => params[:chosen],
  				:not_chosen => params[:unchosen]
  	)

  	@like = Like.find_by_group(params[:chosen])
  	@like.count + 1
  	if @like.save
  		redirect_to '/game/index'
  	end
  end

end
