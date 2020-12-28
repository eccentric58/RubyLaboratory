Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#input'
  post 'output' => 'pages#output'
  get 'output' => 'pages#output'
  get 'input' => 'pages#input'
  get 'cached' => 'pages#cached'
end
