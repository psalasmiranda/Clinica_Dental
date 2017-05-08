class CreateProfesions < ActiveRecord::Migration[5.0]
  def change
    create_table :profesions do |t|
      t.string :nombre
      t.string :universidad

      t.timestamps
    end
  end
end
