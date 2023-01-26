Rails.application.routes.draw do
  resources :trails
  get 'admin' => 'admin#index'
  root to: "users#index"
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
end
