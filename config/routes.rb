Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'reports/create'
  get 'reports/new'
  get 'reports/show'
  get 'reports/edit'
  get 'reports/udpate'
  get 'reports/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
