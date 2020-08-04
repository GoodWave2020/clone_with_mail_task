class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  def authenticate_user
    if @current_user == nil
      flash[:notice] = t('notice.login_needed')
      redirect_to new_session_path
    end
  end

  def check_user
    if @current_user != @picture.user
      flash[:notice] = "you can't destroy or edit other user's pi
      ctures"
      redirect_to pictures_path
    end
  end
end
