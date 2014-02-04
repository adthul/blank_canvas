BlankCanvas::Application.routes.draw do
  resources :folders

  resources :links
  devise_for :users
  resources :users


  root 'welcome#index'
end
