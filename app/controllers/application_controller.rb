class ApplicationController < ActionController::Base
  protect_from_forgery
  include Facebooker2::Rails::Controller

private

def fb_permission_check
	
	if current_facebook_user == session[:user]
	else
	render 'pages/fb_permission'
	end
	
end

	

end
