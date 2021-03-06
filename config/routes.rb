Rails.application.routes.draw do
  devise_for :users

  resources :items do
    member do
      get :delete_attachment
    end
  end
  
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "application#home"
end
