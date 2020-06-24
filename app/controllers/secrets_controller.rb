class SecretsController < ApplicationController
  before_action :require_login

  def show
    render 'sessions/secret'
  end

  private

    def require_login
      redirect_to login_path unless current_user
    end
end
