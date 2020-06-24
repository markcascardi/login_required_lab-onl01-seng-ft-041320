class SessionsController < ApplicationController
  def new
    render 'sessions/login'
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
  end
end
