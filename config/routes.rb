Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
 
  resources :selections
  root to: 'folders#index'
  resources :folders do
    resources :documents
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  
  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
