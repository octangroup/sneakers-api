class SneakerController < ApplicationController

    def index
        render json: Sneaker.all
    end
end
