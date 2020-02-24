Rails.application.routes.draw do
  get 'arriendos/create'
  resources :usuarios
  root 'pages#index'
  resources :arriendos, only: [:create, :show, :edit , :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
