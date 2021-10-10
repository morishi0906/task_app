Rails.application.routes.draw do
  get 'home/show'
  get "new" => "home#new"
  get "/" => "home#top"
  get ":id/show" => "home#show"
  get ":id/edit" => "home#edit"
  
  post "create" => "home#create"
  post ":id/destroy" =>"home#destroy"
  post "update" => "home#update"
end
