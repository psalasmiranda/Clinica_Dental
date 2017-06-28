class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.string :nombre
      t.integer :cantidad
      t.date :ingreso
      t.date :vencimiento
      t.integer :costo

      t.timestamps
    end
  end
end
