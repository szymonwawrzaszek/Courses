Rails.application.routes.draw do
  root to: "students#index"

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resource :sessions
  resources :users
  resources :courses do
    member do
      get :roll
    end
  end

  resources :students do
    resources :awards
    member do
      get :courses
      post :course_add
      post :course_remove
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
