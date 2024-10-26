Rails.application.routes.draw do
  get "reports/index"
  # get "equipment/index"
  # get "equipment/show"
  # get "equipment/new"
  # get "equipment/create"
  # get "equipment/edit"
  # get "equipment/update"
  # get "equipment/destroy"
  # get "food/index"
  # get "food/show"
  # get "food/new"
  # get "food/create"
  # get "food/edit"
  # get "food/update"
  # get "food/destroy"
  # get "people/index"
  # get "people/show"
  # get "people/new"
  # get "people/create"
  # get "people/edit"
  # get "people/update"
  # get "people/destroy"
  #get "inventory/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  #get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  #get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  resources :people do
    resources :allocations, only: [:create]
  end
  resources :food
  resources :equipment

  get "inventory" => "inventory#index"
end
