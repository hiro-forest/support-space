Rails.application.routes.draw do
  devise_for :groups
  get "groups/:id" => "gifts#index", as: :index
  root to: 'top#top'
  resources :groups, only: [:index, :new, :create, :update] 
  resources :gifts, only: [:index, :create, :show]

end
