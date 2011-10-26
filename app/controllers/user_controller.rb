class UserController < ApplicationController
	
	def new
		if User.find_by_name(current_facebook_user.name)
			session[:user_name] = current_facebook_user.name
			redirect_to root_path
		else
			redirect_to '/user/create'

		end
	end

	def create
		@user = User.create(:name => current_facebook_user.name)
		session[:user_name] = @user

		if @user.save
			redirect_to root_path
		end
	end
end
