Rails.application.routes.draw do
  namespace :administrator do
    resources :news
  end
  namespace :administrator do
    resources :contacts
  end
  namespace :administrator do
    resources :admins
  end
  namespace :administrator do
    get 'login/index'
    get 'login/login'
    get 'login/logout'
  end
  get "administrator", to: 'administrator/login#index'
  
  namespace :administrator do
    resources :hotels
  end
  
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
