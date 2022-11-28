Rails.application.routes.draw do
  get 'projects/new'
  get 'projects/create'
  get 'projects/edit'
  get 'projects/update'
  get 'projects/destroy'
  devise_for :users
  root to: "pages#home"

  resources :projects do
    resources :goals
  end

  resources :goals do
    resources :logs
  end

  resources :memberships

  resources :posts do
    resources :comments
  end
end
