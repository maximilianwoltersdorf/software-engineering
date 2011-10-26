class UserController < ApplicationController
	
	def new
	begin current_facebook_user.fetch
		if User.find_by_name(current_facebook_user.name) != nil
			session[:user_name] = User.find_by_name(current_facebook_user.name).name
			redirect_to root_path
		else
			@user = User.create(:name => current_facebook_user.name)
			cookies.permanent[:user_name] = @user.name
			session[:user_name] = @user.name
			redirect_to root_path
		end
	rescue 
	end
	end


end
