class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :especialidad

      t.timestamps
    end
  end
end
