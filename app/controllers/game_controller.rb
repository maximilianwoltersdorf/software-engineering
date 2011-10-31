class GameController < ApplicationController
	require 'mogli'
  def index
  size = Like.all.count
  @like1 = Like.find(1+rand(size))
  @like2 = Like.find(1+rand(size))

  end

  def new
  end

  def create
  end

end
