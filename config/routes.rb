Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :leagues, only: [:index]
  resources :formats, only: [:index]
  resources :clubs, only: [:index]
  resources :contests, only: [:index, :new, :create, :edit, :update]
end
