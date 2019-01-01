Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show, :edit, :update, :destroy]
  
  get 'home/top'
  get 'meishikis/test' => 'meishikis#test'
  post 'meishikis/create' => 'meishikis#create'
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
