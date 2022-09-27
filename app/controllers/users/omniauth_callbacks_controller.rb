class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  before_action :set_user

  def github
    oauth_login
  end

  def google_oauth2
    oauth_login
  end
  
  def oauth_login
    if @user.persisted?
      flash[:notice] = I18n.t("devise.omniauth.success")
      sign_in_and_redirect @user, event: :authentication
    else
      flash[:alert] = I18n.t("devise.omniauth.error")
      redirect_to new_user_registration_url
    end
  end

  private

  def set_user
    @user = User.from_omniauth(request.env["omniauth.auth"])
  end
end
