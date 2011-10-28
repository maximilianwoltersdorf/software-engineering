class PagesController < ApplicationController
	before_filter 'fb_permission_check'

  
  def index
  	client = Mogli::Client.new("280822525282026|--TcorKnfsLncITMeKZF24crcu0")
	@me = Mogli::User.find(100000405507618,client)
  end
  
end
