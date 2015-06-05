class ListaController < ApplicationController
  def index
  	@lista = DonacionTiempo.all + DonacionRecurso.all
  end
end
