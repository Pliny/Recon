StartupWeekend::Application.routes.draw do
  root to: 'recons#index'

  resources :recons
end
