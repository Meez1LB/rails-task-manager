Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Retrieve all
get 'tasks', to: "tasks#index"
# Create form
get 'tasks/new', to: "tasks#new", as: :new_task
# Retrieve one
get 'tasks/:id', to: "tasks#show", as: :task
# Create one
post 'tasks', to: "tasks#create"
# Update one
get 'tasks/:id/edit', to: "tasks#edit", as: :edit_task
patch 'tasks/:id', to: "tasks#update"
# Delete one
delete 'tasks/:id', to: "tasks#destroy", as: :delete_task
end
