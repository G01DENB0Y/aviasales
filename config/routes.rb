Rails.application.routes.draw do
  root 'pages#menu'

  resources :ticket_requests, only: %i[new create index destroy]
end
