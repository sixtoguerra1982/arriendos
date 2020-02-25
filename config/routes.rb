Rails.application.routes.draw do
  resources :peliculas, only: [:index]
  resources :usuarios
  root 'pages#index'
  resources :arriendos, only: [:create, :show, :edit , :update, :destroy , :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
