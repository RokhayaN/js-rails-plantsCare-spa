class Api::V1::PlantsController < ApplicationController
    def index
        plants = Plant.all
    render json: plants
    end 

    def show 
        plant = Plant.find(params[:name])
    render json: plants
    end

    def create 
    plant = Plant.new(checks_params)
        cares = params[:cares].map { |care| Care.find_or_create_by(maintenance: care, light: care, fertilization:care ) }
        plant.cares << cares
        plant.save
    render json: plants
    end 

    def update 
        plant = Plant.find(params[:id]);
        plant.update(check_params)
        if plant.valid?
            render json: plants
        else 
            render json: {errors: plant.errors.full_messages}
        end 
    end 
    private 
    def checks_params
        params.require(:name).permit(:image, :description)
    end 
end
