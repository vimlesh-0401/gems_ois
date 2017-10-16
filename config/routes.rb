Rails.application.routes.draw do
  root "home#index"
  resources :admins, only: [:index] do
    collection do
      get :dashboard
    end
  end

  resources :sessions, only: [:create, :destroy]
  resources :home, only: [:index]
end
