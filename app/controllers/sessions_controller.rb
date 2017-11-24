class SessionsController < ApplicationController
  def new
  end

  def create
    if current_user
     redirect_to root_path
   elsif params[:name] && !params[:name].empty?
     session[:name] = params[:name]
     redirect_to '/'
  end

  end

  def destroy
   session.delete :name
 end

end
