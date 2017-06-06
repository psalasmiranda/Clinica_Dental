class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.integer :cantidad
      t.string :nombre
      t.datetime :ingreso
      t.datetime :vencimiento

      t.timestamps
    end
  end
end
