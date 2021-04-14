Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    collection do
      get :top
    end
    member do
      get :chef_name
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
