class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :new ]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  
  def show
    @product = Product.includes(:user).find(params[:id])
    @ratings = @product.ratings.includes(:user).all
    @rating  = @product.ratings.build(user_id: current_user.id) if current_user
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit

  # POST /products
  # POST /products.json

  def create
    @product = Product.new(product_params)
    if @product.save
        flash[:success] = 'Product added!'
        redirect_to products_path
    else
        render 'new'
    end
end

  def edit
      @photo = Photo.find(params[:id])
  end
  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json

  def update
      @photo = Photo.find(params[:id])
      if @photo.update_attributes(photo_params)
        flash[:success] = 'Photo edited!'
        redirect_to photos_path
      else
        render 'edit'
      end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:image,:user_id, :title, :kind, :size, :price, :description, :image_data)
    end
end
