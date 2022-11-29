Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :projects, only: [:new, :show, :destroy] do
    resources :goals,  only: [:create, :new, :show, :update]
  end
  resources :goals, only: [:destroy]

  resources :goals, only: [] do
    resources :logs, only: [:create, :new, :update]
  end
  resources :logs, only: [:destroy]

  resources :posts, only: [:index, :create, :new, :destroy] do
    resources :comments, only: [:create, :new]
  end
  resources :comments, only: [:destroy]

  resources :groups do
    resources :memberships
  end

  # resources :memberships, only: [:create, :new]
  # resources :groups, only: [:index, :show]
end
