class UsuariosController < ApplicationController
  def index

  	@donacion = DonacionTiempo.all + DonacionRecurso.all
    @me = current_donante
    @usuariosconnect = donante_signed_in? || ong_signed_in? || empresa_signed_in?

  end

  def edit
    @me = current_donante || current_ong

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
