class Api::V1::ImagesController < ApplicationController
    def show
        image = Image.find(params[:id])
        render json: image
    end
end
