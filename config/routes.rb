Rails.application.routes.draw do
  root "stories#index"

  resources :stories do
    resources :contents
  end
end
