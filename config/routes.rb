Wanpisu::Application.routes.draw do
  resource :session, :only => [:new, :create]
  resources :rooms, :only => [:show]
  match "/rooms/*id" => "rooms#show"
  root :to => 'sessions#new'
end
