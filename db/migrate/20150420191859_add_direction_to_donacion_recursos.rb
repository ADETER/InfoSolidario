class AddDirectionToDonacionRecursos < ActiveRecord::Migration
  def change
    add_column :donacion_recursos, :direction, :string
  end
end
