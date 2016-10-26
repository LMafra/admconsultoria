Rails.application.routes.draw do

  get 'home/index'
 
  root 'home#index'

  resources :messages, only: [:new, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'pages/solucoes' => 'high_voltage/pages#show', id: 'solucoes'
end
