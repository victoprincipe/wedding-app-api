Rails.application.routes.draw do
  namespace 'api' do
      namespace 'v1' do
        get '/add', to: 'store#addProduct'
        get '/getProducts', to: 'store#getProducts' 
      end
  end  
end
