class CreateDonacionRecursos < ActiveRecord::Migration
  def change
    create_table :donacion_recursos do |t|
      t.integer :idOng
      t.boolean :schedule
      t.text :direction
      t.integer :state
      t.string :img

      t.timestamps null: false
    end
  end
end
