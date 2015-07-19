class ProductosController < ApplicationController
  def index
    @search = Sunspot.search(Producto) do
      fulltext params[:description] do
        boost_fields :title => 2.0
      end
      with(:points).greater_than(params[:minimo].to_i) if params[:minimo].present?
      with(:points).less_than(params[:maximo].to_i) if params[:maximo].present?
    end
    @lista = @search.results
    @recurso = DonacionRecurso.all
    @me = current_donante

  end

  def show
    @producto = Producto.find(params[:id])
    @me = current_donante
  end
end