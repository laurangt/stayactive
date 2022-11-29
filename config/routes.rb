Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :projects do
    resources :goals
  end

  resources :goals do
    resources :logs, only: [:create, :new, :destroy, :update]
  end

  resources :memberships, only: [:create, :new]
  resources :groups, only: [:index, :show]

  resources :posts, only: [:index, :create, :new, :destroy] do
    resources :comments, only: [:create, :new, :destroy]
  end

  resources :groups do
    resources :memberships
  end
end
