BlankCanvas::Application.routes.draw do

  resources :links
  devise_for :users
  resources :users do
    resources :folders
  end

  match  '/users/:user_id/folder/:folder_name', to: 'folders#destroy_all',  as: 'delete_folder', :via  => :delete
  get '/users/:user_id/folder/:folder_name', to: 'folders#folder_links', as: 'show_folder_links'
  root 'welcome#index'
end
