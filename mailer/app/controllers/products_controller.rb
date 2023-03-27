class ProductsController < AdminController
    # before_action
      def index
          @products = Product.all
      end
  
      def new
          @product = Product.new
      end

      def create
        @product = Product.new(product_params)
        if @product.save
          redirect_to products_path
        else
          render :new, status: :unprocessable_entity
        end
    end

      
      def search
        @search_query = params[:search_query]
        @products = Product.where("name LIKE ?", "%#{@search_query}%")
      end
     
      def destroy
          @product=Product.find(params[:id])
          @product.destroy
          redirect_to products_path
      end

      private
          def product_params
            params.require(:product).permit(:name, :price ,:description)
          end  
          
      def search_params
        params.permit(:search_query)
      end
      
  end
  