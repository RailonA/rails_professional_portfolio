Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "about", to:"about#index"
get "art", to:"art#index"



root to: "main#index"

end
