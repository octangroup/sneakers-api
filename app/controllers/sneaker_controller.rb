class SneakerController < ApplicationController

    def index
        render json: Sneaker.all
    end

    def show 
        render json: Sneaker.find_by(slug: params[:id])
    end

    def create
        @sneaker = Sneaker.new(params)
    end
    

end
