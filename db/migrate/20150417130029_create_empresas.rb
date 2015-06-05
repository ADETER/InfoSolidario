class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :name
      t.string :img
      t.text :description
      t.string :contacto

      t.timestamps null: false
    end
  end
end
