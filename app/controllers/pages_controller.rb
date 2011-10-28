class PagesController < ApplicationController
	before_filter 'fb_permission_check'
  
  def index
	@me = current_facebook_user.fetch
  end
  
end
