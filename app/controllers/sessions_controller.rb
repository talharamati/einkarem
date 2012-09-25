class SessionsController < ApplicationController

  skip_before_filter :authorize, only: [:new, :create]

  def new
    @hide_header = true
    if session[:user_id]
         redirect_to students_path
    end
  end

  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to students_path
    else
      @hide_header = true
      flash.now.alert = t('invalid_credentials')
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
