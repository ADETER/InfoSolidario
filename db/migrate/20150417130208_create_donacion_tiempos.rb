class CreateDonacionTiempos < ActiveRecord::Migration
  def change
    create_table :donacion_tiempos do |t|
      t.integer :idOng
      t.boolean :schedule
      t.text :description
      t.integer :state

      t.timestamps null: false
    end
  end
end
