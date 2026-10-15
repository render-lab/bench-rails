Rails.application.routes.draw do
  root "health#index"
  get "health", to: "health#show"
end
