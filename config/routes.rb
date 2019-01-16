Rails.application.routes.draw do
 namespace :api do
  get '/products' => 'products#display_information'
 end
end
