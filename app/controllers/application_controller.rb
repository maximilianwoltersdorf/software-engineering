class ApplicationController < ActionController::Base
  protect_from_forgery
  include Facebooker2::Rails::Controller

private

def fb_permission_check
	
	begin
		current_facebook_user.fetch
		if session[:user_name] == current_facebook_user.name

		else
		redirect_to '/user/new'
		end
	rescue
		render 'pages/fb_permission'
	end
	
end

	

end
