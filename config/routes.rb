Rails.application.routes.draw do
  root "tasks#index"
  get "/add", to: "tasks#new"
  resources :tasks
end
