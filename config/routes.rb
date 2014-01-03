Bloccit::Application.routes.draw do
  
  resources :posts

  match "about" => 'welocme#about', via: :get

  root :to => 'welcome#index'
end