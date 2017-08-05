Rails.application.routes.draw do
  get 'hotel' , to: 'hotel#index'

  get 'hotel/:id',to: 'hotel#show'

  get 'contact' , to: 'contact#index'

  post 'contact', to: 'contact#create'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
