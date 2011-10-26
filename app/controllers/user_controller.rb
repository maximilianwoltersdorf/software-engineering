class UserController < ApplicationController
	
	def new
		current_facebook_user.fetch
		if User.where(:name =>current_facebook_user.name) != nil
			session[:user] = User.where(:name => current_facebook_user.name)
			redirect_to root_path
		else
			redirect_to '/user/create'

		end
	end

	def create
		current_facebook_user.fetch
		@user = User.create(:name => current_facebook_user.name)
		session[:user_name] = @user

		if @user.save
			redirect_to root_path
		end
	end
end
