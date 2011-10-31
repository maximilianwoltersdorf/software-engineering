class UserController < ApplicationController
	require 'mogli'
	def new
	begin current_facebook_user.fetch
		if User.find_by_name(current_facebook_user.name) != nil
			session[:user_name] = User.find_by_name(current_facebook_user.name).name
			redirect_to root_path
		else
			@user = User.create(:name => current_facebook_user.name,
								:gender => current_facebook_user.gender,
								:birthday => current_facebook_user.birthday,
								:email => current_facebook_user.email,
								:fb_id => current_facebook_user.id)
			#cookies.permanent[:user_name] = @user.name
			session[:user_name] = @user.name
			redirect_to '/user/create'
		end
	rescue
	print "Fehler" 
	end
	end

	def create
		current_facebook_user.likes.each do |item|
			Like.create(:group => item.name,
						:count => "0")
		end
		redirect_to root_path

	end


end
