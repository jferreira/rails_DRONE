Rails.application.routes.draw do
  get 'packages/index'
  get 'packages/show'
  get 'packages/new'
  get 'packages/edit'
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
