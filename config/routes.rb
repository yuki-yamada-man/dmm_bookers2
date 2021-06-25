Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root :'homes#top'
  resources :books,only:[:new, :create, :index, :show, :destroy]
  resources :users,only:[:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
