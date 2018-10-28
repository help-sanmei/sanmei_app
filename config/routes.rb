Rails.application.routes.draw do
  get 'meishikis/index'
  root 'home#top'
  get 'users/new'
  get 'home/top'
  get 'users/test' => 'users#test'
  get 'meishikis/test' => 'meishikis#test'
  post 'meishikis/create' => 'meishikis#create'
  get 'users/result' => 'users#result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
