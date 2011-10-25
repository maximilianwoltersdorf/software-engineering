class PagesController < ApplicationController

  
  def index
 	auth = FbGraph::Auth.new(280822525282026, ec11c6fcb8459f52b9e4c2640116443d)
	auth.from_signed_request(params[:signed_request])
		if auth.authorized?
  			# If authorized, the auth has user and access_token.
  		auth.user.fetch
		else
  			# First time user, show "Connect" button here.
  		render 'pages/fb_permission'
		end
 	end
  
end
