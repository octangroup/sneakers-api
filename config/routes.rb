Rails.application.routes.draw do
  resources :sneaker
  get '/:slug', to: 'users#show', as: 'show'
  resources 'sneaker', path: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
