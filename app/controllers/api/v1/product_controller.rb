class Api::V1::ProductController < Api::V1::ApiController
    before_action :set_product, only: [:show, :update, :destroy]

    #GET /api/v1/products
    def index
        @products = Product.all
        render json:@products  
    end

    #GET /api/v1/products/:id
    def show        
        render json: @product
    end

    #POST /api/v1/products
    def create
        @product = Product.new(product_params)

        if @product.save 
            render json: @product, status: :created
        else
            render json: @product.erros, status: :unprocessable_entity
        end
    end

    #PUT /api/v1/products/:id
    def update
        if @product.update(product_params)
            render json: @product
        else
            render json: @product.erros, status: :unprocessable_entity
        end
    end

    private
        def set_product
            @product = Product.find(params[:id])
        end

        def product_params
            params.require(:products).permit(:name, :desc, :price, :img, :amount)
        end

end