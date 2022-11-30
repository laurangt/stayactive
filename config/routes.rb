Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :projects, only: [:new, :show, :create, :destroy] do
    resources :goals,  only: [:create, :new, :show, :update]
  end
  resources :goals, only: [:destroy]

  resources :goals, only: [] do
    resources :logs, only: [:create]
  end
  resources :logs, only: [:destroy]

  resources :posts, only: [:destroy] do
    resources :comments, only: [:create]
  end
  resources :comments, only: [:destroy]

  resources :groups, only: [:index, :show] do
    resources :memberships
    resources :posts, only: [:create, :new, :show]
  end

  # resources :memberships, only: [:create, :new]
  # resources :groups, only: [:index, :show]
end
