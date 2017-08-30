Rails.application.routes.draw do
  get 'articles/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#top'
  #get '/articles/:id' => 'articles#show', as: 'article'

  #get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  #patch '/articles/:id' => 'article#update', as: 'update_article'
#get '/articles' => 'articles#index'

#	end

resources :articles 

end

