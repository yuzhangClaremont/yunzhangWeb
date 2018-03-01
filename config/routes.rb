Rails.application.routes.draw do
  get 'controller1/test'

  # get ':controller(/:action(/:id))' #(these are optional) 
  # default route may go away in future

  root 'demo#index' #tell where is home
  get 'demo/index' # to match it

  get 'demo/linkedin'

  get 'demo/github'

  get 'demo/other_hello' # another action in controller defined



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
