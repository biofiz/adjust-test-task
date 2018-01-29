Rails.application.routes.draw do
  root 'twitts#index'

  get  'twitts/index'
end
