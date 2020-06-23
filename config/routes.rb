Rails.application.routes.draw do
  get '/:slug', to: 'users#show', as: 'show'
  resources :sneaker, only: [:index,:create,:show]
  resources 'sneaker', path: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
