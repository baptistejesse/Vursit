class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model
    @user = User.from_omniauth(request.env["omniauth.auth"], current_user)
    #user = User.from_omniauth(env["omniauth.auth"])
       #session[:user_id] = user.id
    if @user.persisted?
     
      
    
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication


    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end