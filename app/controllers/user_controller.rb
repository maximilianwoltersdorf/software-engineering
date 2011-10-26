class UserController < ApplicationController
	
	def new
		current_facebook_user.fetch
		if User.find_by_name(current_facebook_user.name) != nil
			session[:user_name] = User.where(:name => current_facebook_user.name)
			redirect_to root_path
		else
			@user = User.create(:name => current_facebook_user.name)
			session[:user_name] = @user
			redirect_to root_path

		end
	end


end
