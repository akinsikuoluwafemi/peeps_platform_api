class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    # protect_from_forgery
    include Knock::Authenticable

    # before_action :authenticate_user

    def encode_token(payload)
        JWT.encode(payload, 's3cr3t')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
                token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 's3cr3t', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end

    end


    def logged_in_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end

    end

    def logged_in?
        !!logg
    end




end
