Rails.application.routes.draw do

  get 'pgstatics/aboutus'

  get 'pgstatics/contacts'

  get 'pgstatics/courses'

  get 'products/index'

  devise_for :users

  namespace :admin do
    get 'welcome/index'
  end
    devise_for :users
    namespace :admin do
    resources :labels
    resources :categories
    resources :products
  end
  root 'home#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
