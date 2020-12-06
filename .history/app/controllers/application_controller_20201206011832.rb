class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    # protect_from_forgery
    include Knock::Authenticable

    # before_action :authenticate_user

    def encode_token(payload)
        JWT.encode(payload, 's3cr3t')
    end

    def auth_header
        
    end




end
