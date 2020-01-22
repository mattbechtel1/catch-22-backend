class Api::V1::AuthController < ApplicationController

    def create # POST /api/v1/login
        @user = User.find_by(username: user_login_params[:username])
        

        if @user && @user.authenticate(user_login_params[:password])
            token = encode({user_id: @user.id})
            user_serial = UserSerializer.new(@user).to_serialized_json
            
            render json: {user: user_serial, jwt: token}, status: :accepted
        else
            render json: { error: true, message: "Invalid username or password"}, status: :unauthorized
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :password)
    end

end
