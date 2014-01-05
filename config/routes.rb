Bloccit::Application.routes.draw do
  
  devise_for :users

  resources :posts

  match "about" => 'welocme#about', via: :get

  root :to => 'welcome#index'
end