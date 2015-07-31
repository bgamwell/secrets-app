Rails.application.routes.draw do

  root 'secrets#index'

  resources :secrets, only: [:index, :new, :create, :show]

end
