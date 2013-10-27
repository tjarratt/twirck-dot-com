TwirckWebsite::Application.routes.draw do
  root :to => 'splash#index'
  match 'privacy' => 'splash#privacy'
  post 'feedback' => 'feedback#create'
end
