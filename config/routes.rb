Rails.application.routes.draw do
  resources :profile_cards
  root "profile_cards#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
