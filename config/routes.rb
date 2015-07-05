Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  #added contact route as listed in exercise
  get 'welcome/contact'

  root to: 'welcome#index'  
end
