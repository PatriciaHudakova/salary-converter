Rails.application.routes.draw do
  root 'salaries#new'

  resources :salaries
end
