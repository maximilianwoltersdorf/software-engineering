class ApplicationController < ActionController::Base
  protect_from_forgery
  include Facebooker2::Rails::Controller

private

def fb_permission_check
	
	render 'pages/fb_permission'
	
end

	

end
