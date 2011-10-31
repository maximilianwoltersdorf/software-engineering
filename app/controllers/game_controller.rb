class GameController < ApplicationController
	require 'mogli'
  def index
  	client = Mogli::Client.new("280822525282026|--TcorKnfsLncITMeKZF24crcu0")
  	current_facebook_user.fetch
  	@myself_likes = current_facebook_user.likes

  end

  def new
  end

  def create
  end

end
