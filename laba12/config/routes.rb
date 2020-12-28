Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'pages#input'
  post 'output' => 'pages#output'
  get 'output' => 'pages#output'
  get 'input' => 'pages#input'
  get 'pages/userlist', :defaults => { :format => 'xml' }


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  get 'edit', to: 'users#edit', as: 'edit'
  get 'users', to: 'users#index'
  # For details on the
end
