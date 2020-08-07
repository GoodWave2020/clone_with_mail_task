class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  def authenticate_user
    if @current_user == nil
      flash[:notice] = I18n.t(:login_needed)
      redirect_to new_session_path
    end
  end

  def check_user_for_user
    if @current_user != @user
      flash[:notice] = I18n.t("you_can't_edit_other_user's_profile")
      redirect_to pictures_path
    end
  end

  def check_user_for_picture
    if @current_user != @picture.user
      flash[:notice] = I18n.t("you_can't_destroy_or_edit_other_user's_pictures")
      redirect_to pictures_path
    end
  end
end
