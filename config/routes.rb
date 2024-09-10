Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  authenticate :user, ->(u) { u.admin? } do
    ActiveAdmin.routes(self)
  end
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :surveys, only: %i[index new show] do
    resources :user_answers, only: %i[new create]
  end

  resources :places, only: :index

  resources :users, only: :show do
    resources :appointments, only: %i[create edit update destroy]
  end

  resources :appointments, only: %i[show index]

  resources :diagnoses, only: %i[new create edit update destroy]

  resources :medications, only: :destroy

  resources :resources
  resources :daily_questions, only: %i[new create]
end
