class RemoveImgFromDonacionRecurso < ActiveRecord::Migration
  def change
    remove_column :donacion_recursos, :img, :string
  end
end
