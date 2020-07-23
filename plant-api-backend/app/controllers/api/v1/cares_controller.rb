class Api::V1::CaresController < ApplicationController
    def index 
        cares = Care.all
        render json: cares
    end 
    
    def create 
       care = Care.create(check_params)
        if care.valid?
            render json: care
        else 
            render json: {errors: care.errors.full_messages}
        end 
    end
    private
    def check_params
        params.permit(:maintenance, :light, :fertilization)
    end 
end 
