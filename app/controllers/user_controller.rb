class UserController < ApplicationController
	
	def new
		@user = User.new
		@user.name = current_facebook_user.name

		if @user.save
			session[:user] = @user.name
			redirect_to "root_path"
		end

	end
end
