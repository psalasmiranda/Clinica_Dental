class AddForeignToListadoAndInsumo < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :listado_id, :integer
    add_foreign_key :insumos, :listados, column: :listado_id, primary_key: :id
  end
end
