Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	HighVoltage.configure do |config|
  		config.home_page = 'home'
	end

	get 'contact', to: 'messages#new', as: 'contact'
	post 'contact', to: 'messages#create'
end
