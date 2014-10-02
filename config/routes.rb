Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  root "galleries#index"

  resources :users, only: [:new, :create]

  resources :galleries do
    resources :images, only: [:show, :new, :create, :edit, :update, :destroy]
  end
 # get "/" => "galleries#index"
 # get "/galleries/new" => "galleries#new"
 # post "/galleries" => "galleries#create"
 # get "/galleries/:id" => "galleries#show"
 # get "/galleries/:id/edit" => "galleries#edit"
 # patch "/galleries/:id" => "galleries#update"
 # delete "/galleries/:id" => "galleries#destroy"
end
