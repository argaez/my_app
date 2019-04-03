Rails.application.routes.draw do

  resources :products
  
root 'welcome#index' 	#nos lleva al path de la aplicación, con esta forma no hay necesidad de poner un erb sino que con esto ya está definida la vista

#get 'welcome/index', to: 'welcome#index' #controlador y vista o acción, le ponemos el to: para que el usuario no tenga que escribir toda la ruta, es decir que si solo pone welcome vaya al controlador y vista, se hace para abreviar el index, no hay necesidad pa otras rutas
get 'welcome/index', to: 'welcome#index', as: 'welcome'
get 'welcome/prices', to: 'welcome#prices', as: 'prices'
get 'welcome/about', to: 'welcome#about', as: 'about'
get 'welcome/contact_us', to: 'welcome#contact_us', as: 'contact_us'


#get 'blog/index'  ##Estas rutas funcionan, pero la idea es que el usuario no tenga que escribir tanto, por lo cual mejor lo direccionamos como sigue:
#get 'blog/new'
#get 'blog/show'
#get 'blog/edit'

#get 'blog/index', to: 'blog#index', as: 'index'  #get es hacia donde apunta #to es a la vista donde debe ir a tomar el html
#get 'blog/new', to: 'blog#new', as: 'new'
#get 'blog/show', to: 'blog#show', as: 'show'
#get 'blog/edit', to: 'blog#edit', as: 'edit'

#Para no hacerlo manual utilzamos rails

resources :blog #except: [:index] #Con esto damos permiso al usuario a las vistas, exceptuando el index. limitamos las acciones.

end
