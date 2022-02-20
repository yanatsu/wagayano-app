Rails.application.routes.draw do
  # get 'applications/top'
  get 'applications/menu'
  get 'applications/place'
  get 'applications/list'
  # get 'applications/list/:space'
  # get 'applications/edit'
  # get 'applications/show'
  # get 'applications/index'
  resources :applications


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
