class MedicinesController < ApplicationController

    def index
        render json: Medicine.all
    end

    def show
        medicine = Medicine.find_by(id: params[:id])
        if medicine
            render json: medicine
        else 
            render json: {error: "Medicine not found!"}, status: :not_found
        end
    end

end
