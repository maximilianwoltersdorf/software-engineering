class GameController < ApplicationController
	require 'mogli'
  def index
  	size = Like.count
		@like1 = Like.find(1+rand(size-1))
		@like2 = Like.find(1+rand(size-1))
		if @like1 == @like2
			@like2 = Like.find(1+rand(size-1))
		end

    @likes = Like.where("count != 0").order("count DESC")
  end

  def new
  end

  def show
   current_facebook_user.fetch
   fbuser_likes   = current_facebook_user.likes
   @user_likes    = Hash.new
      
    fbuser_likes.each do |like|
      @user_likes["#{like.name}"] = Like.find_by_group(like.name).count
      @user_likes.sort_by("#{like.name}")
    end

    #@user_like

  end 

  def create

    current_facebook_user.fetch
  	Game.create(:chosen => params[:chosen],
  				:not_chosen => params[:unchosen],
          :user_name => current_facebook_user.name)

  	@like = Like.find_by_group(params[:chosen])
  	@like.count +=1
  	if @like.save
  		redirect_to '/game/index'
  	end
  end

end
