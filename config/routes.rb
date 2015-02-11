Rails.application.routes.draw do
  
  resources :users
  resources :orders
  resources :line_items
  resources :carts  
  resources :products
  resources :companies
  resources :categories
  resources :themes  
  resources :articles

  root 'static_pages#index'
  
  resources :products do
    get :who_bought, on: :member
  end
  
  match '/store', to: 'store#index', via: 'get'
  match '/contacts', to: 'static_pages#contacts', via: 'get'
  match '/', to: 'static_pages#index', via: 'get'  
  
  get '/category/:url' => 'articles#show'    

  get 'admin/index'  
  
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end
