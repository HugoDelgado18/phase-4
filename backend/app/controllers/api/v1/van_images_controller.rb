class Api::V1::VanImagesController < ApplicationController
    def show
        van_image = VanImage.find(params[:id])
        render json: van_image
    end
end
