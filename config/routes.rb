Rails.application.routes.draw do
  root 'tasks#index'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :tasks

  # patch("/tasks/:id/shift", { controller: "tasks", action: "shift" })
  patch "/tasks/:id/shift" => "tasks#shift", as: :shift
end
