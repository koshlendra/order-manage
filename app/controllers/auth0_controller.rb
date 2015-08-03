class Auth0Controller < ApplicationController
  skip_before_filter :authenticate_user!
  def callback
    oauthorize("Auth0")
  end

  def failure
    @error_msg = request.params['message']
  end
  
  protected

    def oauthorize(kind)
      auth = env["omniauth.auth"]
      user = User.find_by(provider: auth["provider"], uid: auth["uid"]) || User.create_with_omniauth(auth)
      if user
        if user.email.blank?
          flash[:notice] = "Welcome to Simple Team Meeting. Please update your email so we can get in touch!"
        else
          flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => kind
        end
        session["devise.#{kind.downcase}_data"] = env["omniauth.auth"]
        sign_in_and_redirect user, :event => :authentication
      end
    end
end
  
  