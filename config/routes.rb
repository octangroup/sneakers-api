# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  apipie
  get '/:slug', to: 'users#show', as: 'show'
  resources :sneaker, only: %i[index create show]
  resources 'sneaker', path: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
