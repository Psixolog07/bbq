class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  before_action :set_user

  def github
    if @user.persisted?
      flash[:notice] = I18n.t("devise.omniauth.success")
      sign_in_and_redirect @user, event: :authentication
    else
      flash[:alert] = I18n.t("devise.omniauth.error")
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

  private

  def set_user
    File.new("out.txt", 'w') {|f| f.write(request.env["omniauth.auth"]) }
    @user = User.from_omniauth(request.env["omniauth.auth"])
  end
end
