Rails.application.routes.draw do
  

  resources :querys

  resources :posts

  get 'about' => 'welcome#about'

  root to: 'welcome#index'  
end
