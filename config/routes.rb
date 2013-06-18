Voxie::Application.routes.draw do
  # session control
  devise_for :users

  root to: 'photons#index'
end
