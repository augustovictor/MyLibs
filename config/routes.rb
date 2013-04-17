MyLibs::Application.routes.draw do

  devise_for :users

  root to: 'users#show'

  resources :users do
    resources :folders
  end

end
