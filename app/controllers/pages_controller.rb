class PagesController < ApplicationController
	before_filter 'fb_permission_check'
  
  def index
		current_facebook_user.fetch
		@fbuser = current_facebook_user
  end
  
end
