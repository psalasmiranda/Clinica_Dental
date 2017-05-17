class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.string :nomre
      t.integer :cantidad
      t.date :fecha_ing

      t.timestamps
    end
  end
end
