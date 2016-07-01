require 'api_constraints'
Jewels::Application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do
      resources :jewels, only: [:index, :create, :update, :edit, :show]
    end
  end
  root 'home#angular'
end
