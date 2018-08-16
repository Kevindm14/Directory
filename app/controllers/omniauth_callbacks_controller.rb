class OmniauthCallbacksController < ApplicationController

  def google_oauth2
    auth = request.env["omniauth.auth"]
    user = User.where(provider: auth["provider"], uid: auth["uid"])
            .first_or_initialize(email: auth["info"]["email"])
    user.save!(:validate => false)

    user.remember_me = true
    sign_in(:user, user)

    redirect_to after_sign_in_path_for(user)
  end

  def facebook
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
      if @user.persisted?
        sign_in_and_redirect @user
      else
        flash[:error] = 'There was a problem signing you in through Facebook. Please register or try signing in later.'
        redirect_to new_user_registration_url
      end 
  end

  def github
  @user = User.create_from_provider_data(request.env['omniauth.auth'])
  if @user.persisted?
    sign_in_and_redirect @user
  else
    flash[:error] = 'There was a problem signing you in through Github. Please register or try signing in later.'
    redirect_to new_user_registration_url
  end
end


  def failure
    redirect_to root_path
  end
end