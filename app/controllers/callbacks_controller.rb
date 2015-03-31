class CallbacksController < Devise::OmniauthCallbacksController
    def fitbit
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect current_user
    end
end