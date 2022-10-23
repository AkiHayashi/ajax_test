Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs do
    resources :favorites, only: [:create, :destroy], shallow: true
  end
  devise_for :users
end
