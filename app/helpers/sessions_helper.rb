module SessionsHelper

	def login(user)
		session[:user_id]=user.id
	end

	def logout
		session.delete(:user_id)
		@current_user=nil
	end

	def logged_in?
		session[:user_id].present?
	end

	def current_user
		@current_user ||= User.find_by_id(session[:user_id])
	end
end
