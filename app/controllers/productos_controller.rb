class ProductosController < ApplicationController
  def index
    @search = Sunspot.search(Producto) do
      fulltext params[:descripcion] do
        boost_fields :title => 2.0
      end
      with(:points).greater_than(params[:points].to_i) if params[:points].present?
    end
    @lista = @search.results
    @recurso = DonacionRecurso.all
  end

  def show
    @producto = Producto.find(params[:id])
  end
end