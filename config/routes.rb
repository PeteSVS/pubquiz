Rails.application.routes.draw do
  root 'pages#home'
  
  resources :questions
  resources :categories
  resources :quizzes do
    get 'play', on: :member
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
