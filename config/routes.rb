Rails.application.routes.draw do
  root to: "top#index"
  resources :spots, only: [:index, :show] do
    collection do
      get 'quiz'
    end
  end
end
