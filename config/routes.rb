Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :projects, only: [:new, :show, :create, :destroy, :update] do
    resources :goals,  only: [:create, :new, :show]
  end
  resources :goals, only: [:destroy, :update]

  resources :goals, only: [] do
    resources :logs, only: [:create]
  end
  resources :logs, only: [:destroy]

  resources :posts, only: [:destroy] do
    resources :comments, only: [:create]
  end
  resources :comments, only: [:destroy]

  resources :groups, only: [:index, :show, :destroy] do
    resources :memberships, only: [:create]
    resources :posts, only: [:create, :new, :show]
    resources :hearts, only: [:create]
  end
  resources :memberships, only: [:destroy]
  resources :hearts, only: [:destroy]
end
