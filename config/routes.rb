Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :recipes

  namespace :user do
    resources :movies
  end

  root to: 'home#index'
end
