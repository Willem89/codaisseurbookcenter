Rails.application.routes.draw do
  root to: 'pages#home'

  resources :authors do
    resources :books
  end
  namespace :api do
    resources :books
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
