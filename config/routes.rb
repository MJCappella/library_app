Rails.application.routes.draw do
  resources :books do
    member do
      post :borrow
      post :return
    end
  end

  root "books#index"
end