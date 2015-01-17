Rails.application.routes.draw do

  root 'map#index'

  resources :posts

end
