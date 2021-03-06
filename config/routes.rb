Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:show, :index, :new, :create, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end
end
