Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :admins do
    get 'dashboard', on: :collection
  end

  resources :teachers do
    get 'dashboard', on: :collection
  end

  resources :students do
    get 'dashboard', on: :collection
  end
  root to: "website_details#index"
end
