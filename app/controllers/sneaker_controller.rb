# frozen_string_literal: true

class SneakerController < ApplicationController
  def index
    render json: Sneaker.all
  end

  def show
    render json: Sneaker.find_by(slug: params[:id])
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    if @sneaker.save
      render json: {status: 'SUCCESS', message: 'Data saved', data: @sneaker}, status: :ok
    else
      render json: {status: 'ERROR', message: 'Data not saved', data: @sneaker.errors}, status: :unprocessable_entity
    end
  end

  def sneaker_params
    params.permit(:id, :title, :slug, :items)
  end
end
