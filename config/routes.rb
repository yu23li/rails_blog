Rails.application.routes.draw do
  resources :blog_posts
  resources :users
  get '/about', to: 'pages#about'
  get '/sample_blog_post', to: 'pages#sample_blog_post'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
