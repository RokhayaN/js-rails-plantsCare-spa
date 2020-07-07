class Api::V1::PlantsController < ApplicationController
    def index
        @plants = Plant.all
        render json: @plants, status 200
    end 
    def show 
        @plant = Plant.find(params[:id])
        render json: @plant
    end
    def update 
        @plant = Plant.find(params[:id]);
        @plant.update(check_params)
        if @plant.valid?
            render json: @plant
        else 
            render json: {errors: @plant.errors.full_messages}
        end 
    end 
    private 
    def checks_params
        params.permit(:name, :description)
    end 
end
