Rails.application.routes.draw do
  get 'welcome/index'

  resources :libros

  root 'welcome#index'
end
