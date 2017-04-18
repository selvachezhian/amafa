Rails.application.routes.draw do
  resources :nsm_assets do
    get 'user_nsm_asset', on: :collection
  end
  resources :nsm_asset_types
  resources :employees
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'employees#index'
end
