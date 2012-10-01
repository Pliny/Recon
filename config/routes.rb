StartupWeekend::Application.routes.draw do
  root to: 'recons#index'

  resources :recons do
    post :search, :on => :collection
  end

  resources :bubbles, :only => :index
  resources :dashboards, :only => :index
end
