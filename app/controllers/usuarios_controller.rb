class UsuariosController < ApplicationController
  def index

  	@donacion = DonacionTiempo.all + DonacionRecurso.all
    @me = current_donante

  end

  def edit
    @me = current_donante

  end

  def update
    @me = current_donante
    if @me.update_attributes(user_params)
      redirect_to(usuarios_index_path)
    else
      render 'edit'
    end
  end

  def user_params
    params.require(:donante).permit(:name, :email, :description, :contacto, :avatar)
  end
end
