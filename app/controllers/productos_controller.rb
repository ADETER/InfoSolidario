class ProductosController < ApplicationController
  def index
  	@lista = Producto.all
 	@recurso = DonacionRecurso.all
  end

  def show
    @producto = Producto.find(params[:id])
  end

end
