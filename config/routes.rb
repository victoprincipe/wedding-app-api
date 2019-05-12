Rails.application.routes.draw do
  devise_for :users
  namespace 'api' do
      namespace 'v1' do
        resources :product 
        resources :sessions, only: [:create, :destroy]
        resources :sign_up, only: [:create]
      end
  end  
end
