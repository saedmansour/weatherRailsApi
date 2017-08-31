Rails.application.routes.draw do
   namespace :v1 do
     get '/weather/city', to: 'weather#get_by_city'
   end
end
