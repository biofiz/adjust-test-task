Rails.application.routes.draw do
  root 'tweets#index'

  get  'tweets/index'
end
