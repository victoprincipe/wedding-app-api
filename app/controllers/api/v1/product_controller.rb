class Api::V1::ProductController < Api::V1::ApiController
    
    #GET /api/v1/products
    def index
        @products = Product.all
        render json:@products  
    end

    #GET /api/v1/products/:id
    def show
        render json: @contact
    end

    #POST /api/v1/contacts
    def create
        @product = Product.new(product_params)

        if @product.save 
            render json: @product, status: :created
        else
            render json: @product.erros, status: :unprocessable_entity
        end
    end

end