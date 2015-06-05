class AddIddonanteToDonacionRecursos < ActiveRecord::Migration
  def change
    add_column :donacion_recursos, :idDonante, :integer
  end
end
