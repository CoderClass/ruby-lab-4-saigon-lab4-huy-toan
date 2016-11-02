class HomeController < ApplicationController
  def index
  end

  def logout
    session[:username] = nil
    flash[:success] = 'Log out success!'
    redirect_back fallback_location: root_path
  end

  def login
    session[:username] = params[:user][:name]
    flash[:success] = 'Login success!'
    redirect_back fallback_location: root_path
  end
end
