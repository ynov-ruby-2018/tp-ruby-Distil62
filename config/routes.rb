Rails.application.routes.draw do
  get '/', to: 'golden_book#index'
  resources :golden_book # only: [:index, :create] aurait été préférable, 5 routes existent mais ne servent à rien
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
