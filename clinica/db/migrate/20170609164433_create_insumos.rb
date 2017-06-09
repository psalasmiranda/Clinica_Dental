class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.string :nombre
      t.integer :cantidad
      t.datetime :ingreso
      t.datetime :vencimiento
      t.integer :costo

      t.timestamps
    end
  end
end
