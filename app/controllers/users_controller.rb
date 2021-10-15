class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        # byebug
        # user = User.first
        # if user
        #     render json: user
        # else 
        #     render json: {error: "User not found!"}, status: :not_found
        # end
        if current_user
            render json: current_user, status: :ok
        else
            render json: {}, status: :unauthorize
        end
    end

    def create
        user = User.create(user_create_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
          else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
          end
    end

    def destroy
        user_destroy = User.find_by_id(params[:id])
        session.delete(:user_id)
        user_destroy.destroy
        render json: {session_user: session[:user_id]}
    end

    def update
        user_update = User.find_by_id(params[:id])
        if user_update.update(user_update_params)
            render json: user_update, status: :ok
        else
            render json: { errors: user_update.errors.full_messages}, status: :unprocessable_entity
        end

    end


    private

    def user_create_params
        params.permit(:name, :username, :password, :password_confirmation)
    end

    def user_update_params
        params.permit(:username)
    end
end
