Rails.application.routes.draw do  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  resources :articles do
    resources :comments
  end

  get 'about/index'
  get 'archives/index'
  get 'highlights/index'
  get 'login/index'
  post 'login/login'
  get 'login/logout'

end
