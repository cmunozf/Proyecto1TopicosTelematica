Rails.application.routes.draw do


  get 'welcome/index'

 resources :articles
 resources :eliminar_libro
 resources :ver_libros

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
