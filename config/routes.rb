TwirckWebsite::Application.routes.draw do
  root :to => 'splash#index'

  match 'privacy' => 'splash#privacy'
  match 'about' => 'splash#about'

  post 'feedback' => 'feedback#create'
end
