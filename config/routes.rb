BlankCanvas::Application.routes.draw do

  resources :links
  devise_for :users
  resources :users do
    resources :folders
  end

  get '/users/:user_id/delete/:folder_name', to: 'folder#destroy_all', as: 'delete_folder'
  get '/users/:user_id/folder/:folder_name', to: 'folders#folder_links', as: 'show_folder_links'
  root 'welcome#index'
end
