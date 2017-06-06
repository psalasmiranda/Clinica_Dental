class AddForeignToListadoAndAgente < ActiveRecord::Migration[5.1]
  def change
    add_column :agentes, :listado_id, :integer
    add_foreign_key :agentes, :listados, column: :listado_id, primary_key: :id
  end
end
