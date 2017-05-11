class CreateTratamientos < ActiveRecord::Migration[5.0]
  def change
    create_table :tratamientos do |t|
      t.string :nombre
      t.int :codigo
      t.int :costo

      t.timestamps
    end
  end
end
