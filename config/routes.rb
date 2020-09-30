Rails.application.routes.draw do
  resources :searches, only: [:index]
  get "superheroes/search" => 'superheroes#search'
  root to: "searches#index"
end
