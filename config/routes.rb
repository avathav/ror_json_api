Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1 do
      devise_for :users
      resources :products
    end
  end
end
