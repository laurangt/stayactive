Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  # resources :projects, :only [:create, :show, :new, :edit, :update, :destroy] do
  #   resources :goals
  # end

  # resources :goals do
  #   resources :logs, :only [:create, :new, :destroy, :update]
  # end

  # resources :memberships, :only [:create, :new]
  # resources :groups, :only [:index, :show]

  # resources :posts, :only [:index, :create, :new, :destroy] do
  #   resources :comments [:create, :new, :destroy]
  # end

  resources :groups do
    resources :memberships
  end
end
