BlankCanvas::Application.routes.draw do

  resources :links
  devise_for :users
  resources :users do
    resources :folders
  end


  root 'welcome#index'
end
