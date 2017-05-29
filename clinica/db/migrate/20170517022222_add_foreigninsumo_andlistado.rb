class AddForeigninsumoAndlistado < ActiveRecord::Migration[5.1]
  def change
    add_column :listados, :insumo_id, :integer
    add_foreign_key :listados, :insumos, column: :insumo_id, primary_key: :id
  end
end
