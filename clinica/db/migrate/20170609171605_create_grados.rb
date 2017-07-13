class CreateGrados < ActiveRecord::Migration[5.1]
  def change
    create_table :grados do |t|
      t.string :rol
      t.boolean :agenda_vista
      t.boolean :insumo_vista
      t.boolean :paciente_vista
      t.boolean :proveedor_vista
      t.boolean :tratamiento_vista
      t.boolean :usuario_vista
      t.boolean :grado_vista

      t.timestamps
    end    
  end
end
