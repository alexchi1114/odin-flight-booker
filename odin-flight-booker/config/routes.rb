Rails.application.routes.draw do

	get '/flights' => 'flights#index'

	root 'flights#index'

	resources :bookings, only: [:new]
end
