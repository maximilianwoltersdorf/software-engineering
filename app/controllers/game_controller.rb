class GameController < ApplicationController
	require 'mogli'
  def index
  	client = Mogli::Client.new("280822525282026|--TcorKnfsLncITMeKZF24crcu0")
  	current_facebook_user.fetch

  end

  def new
  end

  def create
  end

end
