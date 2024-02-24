Rails.application.routes.draw do
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts/list' => 'posts#list'
  get 'posts/category' => 'posts#category'
  get 'posts/hunniki1' => 'posts#hunniki1'
  get 'posts/hunniki2' => 'posts#hunniki2'
  get 'posts/hunniki3' => 'posts#hunniki3'
  get 'posts/hunniki4' => 'posts#hunniki4'
  get 'posts/hunniki5' => 'posts#hunniki5'
  get 'posts/hunniki6' => 'posts#hunniki6'
  get 'posts/hunniki7' => 'posts#hunniki7'
  get 'posts/hunniki8' => 'posts#hunniki8'
  get 'posts/hunniki9' => 'posts#hunniki9'

  resources :users, only: [:show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end

  resources :shops
  resources :maps
  root 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show',as: 'post1'
  post 'posts' => 'posts#create'
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy' 
  get 'posts/:id/edit' => 'posts#edit', as:'edit_post1'
  get 'posts/:post_id/likes' => 'likes#create'
  get 'posts/:post_id/likes/:id' => 'likes#destroy'

end
