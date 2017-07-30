class CreateHasInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :has_insumos do |t|
      t.integer :cantidad
      t.references :agenda, foreign_key: true
      t.references :insumo, foreign_key: true

      t.timestamps
    end
  end
end
