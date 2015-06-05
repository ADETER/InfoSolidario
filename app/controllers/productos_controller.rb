class ProductosController < ApplicationController
  def index
  	@lista = Producto.all
 	@recurso = DonacionRecurso.all
  end
end
