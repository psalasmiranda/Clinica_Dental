class CreateGrados < ActiveRecord::Migration[5.1]
  def change
    create_table :grados do |t|
      t.string :rol

      t.timestamps
    end
  end
end
