Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#maintenance'
  scope '(:locale)', locale: /fr|cat/ do
    root to: 'pages#maintenance'
    resources :musics
    resources :users
    resources :informations
    get '/wedding', to: 'pages#wedding'
    get '/contact', to: 'pages#contact'
    get '/tourism', to: 'pages#tourism'
    get '/maintenance', to: 'pages#maintenance'
      end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
