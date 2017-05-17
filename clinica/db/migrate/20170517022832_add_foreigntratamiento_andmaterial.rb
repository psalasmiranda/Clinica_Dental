class AddForeigntratamientoAndmaterial < ActiveRecord::Migration[5.1]
  def change
    add_colum :material, :tratamiento_id, :integer
    add_foreign_key :material, :tratamientos, colum: :tratamiento_id, primary_key: :id
  end
end
