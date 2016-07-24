class SessionsController < ApplicationController

  def create
  	user = User.find_by_email params[:session][:email]
  	#debugger
  	if user && user.authenticate(params[:session][:password])
  		login(user)
  		redirect_to root_path
  	else
      flash.now[:danger] = 'Invalid email/password combination' 
  		render 'new'	
  	end
  end

  def destroy
    logout
    @current_user=nil
    redirect_to root_url
  end

end
