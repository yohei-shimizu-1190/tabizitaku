Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  root to: "top#index"

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :spots, only: [:index, :show] do
    resources :photos, only: [:create, :destroy]
    collection do
      get 'quiz'
      get 'jmap'
    end
  end

end
