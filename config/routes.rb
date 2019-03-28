Rails.application.routes.draw do
  
  resources :relations
  devise_for :users
  resources :users, :only => [:show, :edit, :update, :destroy]
  
  resources :staffs
  resources :teams do
    collection do
      post 'team_evaluate'
    end
  end
  # resources :teams
  
  post 'meishikis/makeInpLeadSub' => 'meishikis#makeInpLeadSub'
  get 'meishikis/inpLeaderSub' => 'meishikis#inpLeaderSub'
  get 'meishikis/oresen' => 'meishikis#oresen'
  get 'meishikis/test' => 'meishikis#test'
  get 'meishikis/create' => 'meishikis#create'
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
