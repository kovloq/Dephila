Rails.application.routes.draw do
  namespace :administrator do
    get 'login/index'
    post 'login/login'
    get 'login/logout'
    get 'home/index'
    get 'home', to: 'home#index'
    resources :admins
    resources :contacts
    resources :news
    resources :hotels
    resources :restaurants
    resources :users
  end
  get "administrator", to: 'administrator/login#index'
  
  get 'promo' , to: 'promo#index'
  get 'wisata' , to: 'wisata#index'

  get 'wisata/:id' , to: 'wisata#show'

  get 'resto' , to: 'resto#index'

  get 'resto/:id' , to: 'resto#show'

  get 'hotel' , to: 'hotel#index'

  get 'hotel/:id',to: 'hotel#show'

  get 'contact' , to: 'contact#index'

  post 'contact', to: 'contact#create'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
