class SneakerController < ApplicationController

    def index
        render json: Sneaker.all
    end

    def show 
        render json: Sneaker.find_by(slug: params[:id])
    end

    def create
        @sneaker = Sneaker.new(get_params)
        @sneaker.save
    end
    
    def get_params
        params.permit(:id,:title,:slug,:items)
    end

end
