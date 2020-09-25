class ApplicationController < ActionController::Base
    protect_from_forgery
    include Knock::Authenticable

    before_action :authenticate_user

end
