Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [:create]
  end
end
