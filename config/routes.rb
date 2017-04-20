Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  scope '(:locale)', locale: /fr|cat/ do
    root to: 'pages#home'
    resources :musics
    resources :users
    resources :information, only: [:new, :create]

    resources :pictures
    resources :transports, only: [:new, :create]

    get '/wedding', to: 'pages#wedding'
    get '/contact', to: 'pages#contact'
    get '/tourism', to: 'pages#tourism'
    get '/present', to: 'pages#present'
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
