Rails.application.routes.draw do
  get "/" => "texts#index"
  resources :texts, only: %i(index new create destroy)
  resources :ansers, only: %i(index new create destroy show)
end
