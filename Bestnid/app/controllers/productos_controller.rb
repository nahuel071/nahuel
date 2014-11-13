class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  # GET /productos
  # GET /productos.json
  def index
   @producto=Producto.all
  end

  # GET /productos/1
  # GET /productos/1.json
  def show
    
  end

  # GET /productos/new
  def new
   @producto=Producto.new
  end

  # GET /productos/1/edit
  def edit
  end

  # POST /productos
  # POST /productos.json
  def create
  
  @producto = Producto.create(ad_params)
  @producto.save

   if @producto.save
    redirect_to @producto
   else 
    render 'new'
   end 
end

public

def ad_params
  params.require(:producto).permit(:nombre, :descripcion, :vencimiento, :imagen, :categoria_nombre)
end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
   
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
     
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      
    end
end
