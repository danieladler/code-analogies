Rails.application.routes.draw do
  root to: "home#index"

  get  "/new",        to: "story#new"
  get  "/all",        to: "story#all"
  get  "/stores/:id", to: "story#show"
  post "/create",     to: "story#create"

end
