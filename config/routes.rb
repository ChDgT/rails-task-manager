Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read all -> R
  get "tasks", to: "tasks#index"

  # create a new task -> C
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Select one task -> R
  get "tasks/:id", to: "tasks#show", as: :task

  # update a task -> U
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  # remove a task -> D
  delete "tasks/:id", to: "tasks#destroy", as: :delete
end
