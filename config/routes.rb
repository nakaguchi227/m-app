Rails.application.routes.draw do
  get "users/new" => "users#new"
  get "login" => "users#login_form"
  post "login" => "users#login"
  delete "logout" => "users#logout"
  get "users/index" => "users#index"
  post "users/create" => "users#create"
  get "uploads/index" => "uploads#index"
  get "uploads/new" => "uploads#new"
  post "uploads/create" => "uploads#create"
  get "uploads/:id/edit" => "uploads#edit"
  post "uploads/:id/update" => "uploads#update"
  delete "uploads/:id/destroy" => "uploads#destroy"
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
