class GameController < ApplicationController
	require 'mogli'
  def index
  	client = Mogli::Client.new("238845252805361|6a7pahTs-H4yeHgNq5PFIN5a5cQ")
  	album = Mogli::Album.find(7807422276, client)
	album.photos
  end

  def new
  end

  def create
  end

end
