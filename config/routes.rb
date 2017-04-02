Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  scope '(:locale)', locale: /fr|cat/ do
    root to: 'pages#home'
    resources :musics
    get '/wedding', to: 'pages#wedding'
    get '/contact', to: 'pages#contact'
      end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
