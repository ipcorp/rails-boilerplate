RailsBoilerplate::Application.routes.draw do
  get "widget/hurry_up_jose"

  get "welcome/index"
  get "welcome/prueba_widget"

  root :to => 'welcome#index'
end
