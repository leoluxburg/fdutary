Rails.application.routes.draw do
  resources :polaroids
  devise_for :users
  root to: 'pages#home'
  get '/photography', to: 'pages#photography'
 get '/cinematography', to: 'pages#cinematography'
 get '/panchito', to: 'pages#panchito'
  get '/contact', to: 'pages#contact'
  get '/records', to: 'pages#records'
   get 'download_pdf', to: "pages#download_pdf"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
