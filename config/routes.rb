Rails.application.routes.draw do
  get "uploads/index" => "uploads#index"
  get "uploads/new" => "uploads#new"
  post "uploads/create" => "uploads#create"
  get "uploads/:id/edit" => "uploads#edit"
  post "uploads/:id/update" => "uploads#update"
  post "uploads/:id/destroy" => "uploads#destroy"
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
