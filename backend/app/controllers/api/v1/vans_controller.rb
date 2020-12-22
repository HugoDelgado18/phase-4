class Api::V1::VansController < ApplicationController
    def index
        vans = Van.all 
        render json: vans
    end

    def show
        van = Van.find(params[:id])
        render json: van
    end

    def update
        van = Van.find(params[:id])
        van.update(van_params)
        if van.save
            render json: van
        end
    end

    def van_params
        params.permit()
    end
end
