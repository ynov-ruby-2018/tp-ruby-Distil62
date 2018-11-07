Rails.application.routes.draw do
  get '/', to: 'golden_book#index'
  resources :golden_book
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
