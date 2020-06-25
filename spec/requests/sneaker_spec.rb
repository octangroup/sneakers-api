# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'sneaker', type: :request do
  path '/sneaker' do
    get(summary: 'list sneakers') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
    post(summary: 'create sneaker') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
  end

  path '/sneaker/{id}' do
    # You'll want to customize the parameter types...
    parameter 'id', in: :path, type: :string
    # ...and values used to make the requests.
    let(:id) { '123' }

    get(summary: 'show sneaker') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
  end

  path '/' do
    get(summary: 'list sneakers') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
    post(summary: 'create sneaker') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
  end

  path '/{id}' do
    # You'll want to customize the parameter types...
    parameter 'id', in: :path, type: :string
    # ...and values used to make the requests.
    let(:id) { '123' }

    get(summary: 'show sneaker') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
    patch(summary: 'update sneaker') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
    put(summary: 'update sneaker') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
    delete(summary: 'delete sneaker') do
      response(200, description: 'successful') do
        # You can add before/let blocks here to trigger the response code
      end
    end
  end
end
