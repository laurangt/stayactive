Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'settings', to: 'pages#settings'

  resources :projects, only: [:new, :show, :create, :destroy, :update] do
    post 'posts', to: 'posts#share'
    resources :goals, only: [:create, :new, :show]
  end
  resources :goals, only: [:destroy, :update]

  resources :goals, only: [] do
    resources :logs, only: [:create]
  end
  resources :logs, only: [:destroy]

  resources :logs, only:[] do
    post 'posts', to: 'posts#sharelog'
  end

  resources :posts, only: [:destroy] do
    resources :comments, only: [:create]
    resources :hearts, only: [:create]
  end
  resources :comments, only: [:destroy]
  resources :hearts, only: [:destroy]

  resources :groups, only: [:index, :show, :destroy] do
    resources :memberships, only: [:create]
    resources :posts, only: [:create, :new, :show, :update]
  end

  resources :memberships, only: [:destroy]
  resources :users, only: [:show]


end
