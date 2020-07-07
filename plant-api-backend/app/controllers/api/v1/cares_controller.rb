class Api::V1::CaresController < ApplicationController
    def create 
        @care = Care.create(check_params)
        if @care.valid?
            render json: @care 
        else 
            render json: {errors: @care.errors.full_messages}
        end 
    end
    private
    def check_params
        permit(:maintenance, :light, :plant_id)
    end 
end
