Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "interfaces#index"

  resources :interfaces do
    get "send_message", on: :collection
  end
end
