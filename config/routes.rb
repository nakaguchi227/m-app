Rails.application.routes.draw do
  get "uploads/index" => "uploads#index"
  get "uploads/new" => "uploads#new"
  post "uploads/create" => "uploads#create"
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
