Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Create one task
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  # Read all
  get "tasks", to: 'tasks#index'

  # read 1 task
  get "tasks/:id", to: 'tasks#show', as: :task


  # update one task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  #delete 1 task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete

  # root to
end
