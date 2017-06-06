class AddForeignToComponenteAndInsumo < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :componente_id, :integer
    add_foreign_key :insumos, :componentes, column: :componente_id, primary_key: :id
  end
end
