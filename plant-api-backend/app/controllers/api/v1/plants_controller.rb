class Api::V1::PlantsController < ApplicationController
    def index
        #binding.pry
        plants = Plant.all
    render json: plants
    end 

    def show 
        plant = Plant.find(params[:name])
    render json: plant
    end

    def create 
        #binding.pry
    plant = Plant.new(checks_params)
        cares = params[:cares].map { |care| Care.find_or_create_by(maintenance: care, light: care, fertilization:care ) }
        plant.cares << cares
        plant.save
    render json: plant
    end 

    def update 
        plant = Plant.find(params[:id]);
        plant.update(check_params)
        if plant.valid?
            render json: plant
        else 
            render json: {errors: plant.errors.full_messages}
        end 
    end 
    private 
    def checks_params
        params.require(:plant).permit(:name, :image, :description)
    end 
end
