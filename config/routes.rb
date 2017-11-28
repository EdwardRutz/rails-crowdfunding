Rails.application.routes.draw do
  resources :category_projects
  resources :categories
  resources :orders
  resources :rewards
  resources :projects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
