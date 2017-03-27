Rails.application.routes.draw do
	resources :articles
	resources :users
	resources :transformers

	root "transformers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	post "/transform", to: "transformers#transform"
end
