class ApplicationController < ActionController::Base
    before_action :authorize
    before_action :current_user

    protected
    def authorize
        unless User.find_by(id: session[:user_id])
            redirect_to login_url, notice: "Please log in"
        end
    end 
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
     end
end
