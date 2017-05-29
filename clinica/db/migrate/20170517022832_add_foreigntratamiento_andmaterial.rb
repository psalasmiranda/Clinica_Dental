class AddForeigntratamientoAndmaterial < ActiveRecord::Migration[5.1]
  def change
    add_column :materials, :tratamiento_id, :integer
    add_foreign_key :materials, :tratamientos, column: :tratamiento_id, primary_key: :id
  end
end
