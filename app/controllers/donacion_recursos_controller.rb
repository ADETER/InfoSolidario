class DonacionRecursosController < ApplicationController
  def index
  end
  
  def show
  	@donacion = DonacionRecurso.find(params[:id])
  end

  def new
  	@donacion = DonacionRecurso.new
  end

  def create

  	@donacion = DonacionRecurso.create(donacionrecursos_params)
  	redirect_to @donacion
  end

  def donacionrecursos_params
    params.require(:donacion_recurso).permit(:description,:direction,:schedule,:state,:idDonante,:avatar)
  end

end
