class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :points
      t.integer :idEmpresa
      t.string :img
      t.integer :idDonante
      t.text :direction

      t.timestamps null: false
    end
  end
end
