class AddIddonanteToDonacionTiempos < ActiveRecord::Migration
  def change
    add_column :donacion_tiempos, :idDonante, :integer
  end
end
