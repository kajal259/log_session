Rails.application.routes.draw do
  resources :sessions, only:[:new, :create, :destroy]
  get 'signup', to:'users#new', as:'signup'
  get 'login', to:'sessions#new', as:'login'
  get 'logout', to:'sessions#destroy', as:'logout'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :users
  get 'page/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
