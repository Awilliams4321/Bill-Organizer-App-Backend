class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users.to_json
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user.to_json
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end

end
