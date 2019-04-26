Rails.application.routes.draw do
  resources :users
  resources :shiftjobs
  resources :jobs
  resources :storeflavors
  resources :flavors
  resources :shifts
  # get 'home/home'
  # get 'home/about'
  # get 'home/privacy'
  # get 'home/contact'
  resources :assignments
  resources :stores
  resources :employees
  
  
  # Semi-static page routes
  get 'home' => 'home#home', as: :home
  get 'about' => 'home#about', as: :about
  get 'contact' => 'home#contact', as: :contact
  get 'privacy' => 'home#privacy', as: :privacy
  
  resources :demos, only: [:new, :create, :destroy]
  get 'demos/new', to: 'demos#new', as: :login
  get 'demos/destroy', to: 'demos#destroy', as: :logout
  
  root 'demos#new'
  
  # Set the root url
  #root :to => 'home#home'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
