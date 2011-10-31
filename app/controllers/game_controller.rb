class GameController < ApplicationController
  def index
  	album = Mogli::Album.find(7807422276)
	album.photos
  end

  def new
  end

  def create
  end

end
