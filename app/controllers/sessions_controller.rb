class SessionsController < ApplicationController
    def create
        user = User.find_by_username(params[:username])
        session[:user_id] = user.id
        # byebug
        if user&.authenticate(params[:password])
          session[:user_id] = user.id
          render json: user, status: :ok
        else
          render json: { error: "Invalid username or password" }, status: :unauthorized
        end
    end
      # def create
      #   byebug
      # end
    
      def destroy
        # byebug
        session.delete :user_id
        render json: {message: "Delete Done!"}
        # head :no_content
      end
end
