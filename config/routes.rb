Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'test', to: 'user#test'
   get 'user/list'
   post 'user/signup'
   post 'user/login'
  # post 'user/signup'
  # post 'user/login'  
end
