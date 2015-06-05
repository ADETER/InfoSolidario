class WelcomeController < ApplicationController
  def index
  	@recurso = DonacionRecurso.all
  	@producto = Producto.all
  end
end
