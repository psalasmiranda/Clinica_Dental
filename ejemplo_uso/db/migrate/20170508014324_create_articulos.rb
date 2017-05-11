class CreateArticulos < ActiveRecord::Migration[5.0]
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.int :fecha_ingreso
      t.int :fecha_vencimiento
      t.int :cantidad

      t.timestamps
    end
  end
end
