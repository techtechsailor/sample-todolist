Rails.application.routes.draw do
  devise_for :users
  root "tasks#index"
  get "/add", to: "tasks#new"
  resources :tasks
end
