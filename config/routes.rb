RailsBoilerplate::Application.routes.draw do
  get "welcome/index"
  get "welcome/alturas_por_ciudad"
  root :to => 'welcome#index'

end
