class AddForeignToComponenteAndTratamiento < ActiveRecord::Migration[5.1]
  def change
    add_column :tratamientos, :componente_id, :integer
    add_foreign_key :tratamientos, :componentes, column: :componente_id, primary_key: :id
  end
end
