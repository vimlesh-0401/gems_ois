Rails.application.routes.draw do

  root "home#index"
  resources :admins, only: [:index] do
    collection do
      get :dashboard
    end
  end

  resources :sessions, only: [:create, :destroy]
  resources :home, only: [:index]
  resources :tests, only: [:index, :show, :new, :create]
  resources :questions, only: [:create, :destroy] do
    collection do
      get :form
    end
  end

  resources :choices, only: [:create, :destroy] do
    collection do
      get :form
    end
  end
end
