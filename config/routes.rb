Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :spots, only: [:index, :show] do
    resources :photos, only: :create
    collection do
      get 'quiz'
      get 'jmap'
    end
  end

  resources :testsessions, only: :create

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
