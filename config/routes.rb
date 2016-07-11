Rails.application.routes.draw do

  use_doorkeeper
  namespace :api do
    get 'posts' => 'posts#index'
    get 'posts/:id' => 'posts#show'
    post 'posts' => 'posts#create'
    put 'posts/:id' => 'posts#update'
    delete 'posts/:id' => 'posts#delete'
    post 'users' => 'users#create'
  end
end
