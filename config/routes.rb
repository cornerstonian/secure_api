Rails.application.routes.draw do
  namespace :api do
    get 'posts' => 'posts#index'
    get 'posts/:id' => 'posts#show'
  end
end
