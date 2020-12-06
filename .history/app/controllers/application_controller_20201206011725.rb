class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    # protect_from_forgery
    include Knock::Authenticable

    # before_action :authenticate_user

    def encode_token(payload)
        JWT
    end





end
