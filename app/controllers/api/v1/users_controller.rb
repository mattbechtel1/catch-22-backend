class Api::V1::UsersController < ApplicationController

    def create
        user = User.create(user_params)

        if user.valid?
            @token = encode(user_id: user.id)
            user_serial = UserSerializer.new(user).to_serialized_json
            # byebug
            render json: {user: user_serial, jwt: @token}, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def profile
        token = request.headers["Authentication"]
        payload = decode(token)
        user = User.find(payload[0]["user_id"])
        # byebug
        render json: UserSerializer.new(user).to_serialized_json
    end

    private

    def user_params 
        params.require(:user).permit(:username, :password)
    end
end
