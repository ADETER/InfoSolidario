class DonacionesController < ApplicationController
  
  def index
  	@recurso = DonacionRecurso.all
  end

 

end
