class UserTokenController < Knock::AuthTokenController
    skip_before_action :verify_authenticity_token, raise: false

    def create 

    end

    private


      def user_params
      params.require(:auth).permit(:first_name, :last_name, :email, :password, :avatar)

    end


end
