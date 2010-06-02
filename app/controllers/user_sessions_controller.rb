class UserSessionsController < ApplicationController
  # GET /user_sessions/new
  # GET /user_sessions/new.xml
  def new
    @user_session = UserSession.new
  end

  # POST /user_sessions
  # POST /user_sessions.xml
  def create
    @user_session = UserSession.new(params[:user_session])

    if @user_session.save
      flash[:notice] = 'Welcome back!'
      redirect_to root_url
    else
      render :action => "new"
    end
  end

  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.xml
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = 'See ya!'

    redirect_to root_url
  end
end