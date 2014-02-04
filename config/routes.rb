BlankCanvas::Application.routes.draw do
  resources :links

  devise_for :users

  root 'welcome#index'

end
