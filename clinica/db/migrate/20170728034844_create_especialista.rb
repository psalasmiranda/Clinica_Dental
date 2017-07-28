class CreateEspecialista < ActiveRecord::Migration[5.1]
  def change
    create_table :especialista do |t|
      t.string :especialidad

      t.timestamps
    end
  end
end
