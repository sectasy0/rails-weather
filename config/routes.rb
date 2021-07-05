Rails.application.routes.draw do
  resources :weather do
    get :city
  end
end
