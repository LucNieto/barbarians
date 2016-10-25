Rails.application.routes.draw do



  devise_for :users
  namespace :admin do
    resources :labels
    resources :categories
    resources :products
  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
