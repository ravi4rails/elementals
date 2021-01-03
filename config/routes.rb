Rails.application.routes.draw do
  devise_for :users
  resources :employees
  root 'home#index'
end
