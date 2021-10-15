class UserMedicinesController < ApplicationController
    
    def index
        # render json: UserMedicine.all
        session[:user_id] = User.first.id
        # byebug
        if current_user
            my_meds = @current_user.user_medicines
            render json: my_meds
        else
            render json: {error: "Need to Be Login"}
        end
    end

    def create
        user_med = UserMedicine.create(create_params)
        if user_med.valid?
            session[:user_id] = user.id
            render json: user_med, status: :ok
        else
            render json: { errors: user_med.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        user_medicine_update = UserMedicine.find_by_id(params[:id])
        if user_medicine_update.update(update_user_medicine_params)
            render json: user_medicine_update, status: :ok
        else
            render json: { errors: user_medicine_update.errors.full_messages}, status: :unprocessable_entity
        end

    end


    private

    def create_params
        params.permit(:user_id, :medicine_id, :purchased)
    end

    def update_user_medicine_params
        params.permit(:purchased)
    end

end
