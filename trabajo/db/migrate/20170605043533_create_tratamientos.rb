class CreateTratamientos < ActiveRecord::Migration[5.1]
  def change
    create_table :tratamientos do |t|
      t.string :nombre
      t.integer :costo
      t.string :descripcion

      t.timestamps
    end
  end
end
