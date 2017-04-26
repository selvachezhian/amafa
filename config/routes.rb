Rails.application.routes.draw do
  resources :departments
  resources :nsm_assets do
    get 'user_nsm_asset', on: :collection
    get 'search_assets', on: :collection
  end
  resources :nsm_asset_types
  resources :employees do
    post 'assign_asset', on: :collection
    delete 'remove_asset', on: :collection
  end
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'employees#index'
end
