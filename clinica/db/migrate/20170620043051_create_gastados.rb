class CreateGastados < ActiveRecord::Migration[5.1]
  def change
    create_table :gastados do |t|
      t.integer :cantidad

      t.timestamps
    end
  end
end
