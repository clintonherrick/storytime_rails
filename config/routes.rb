Rails.application.routes.draw do
  # root "story#index"

  resources :stories do
    resources :contents
  end
end
