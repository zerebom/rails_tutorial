# Rails.application.routes.draw do
 # get 'users/new'

#   root 'static_pages#home'
#   get  'static_pages/home'
#   get  'static_pages/help'
#   get  'static_pages/about'
#   get  'static_pages/contact'
# end


Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  # When get request send to /help, routes call to help action of StaticPages Controller.
  get  '/signup', to: 'users#new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  resources :users
end