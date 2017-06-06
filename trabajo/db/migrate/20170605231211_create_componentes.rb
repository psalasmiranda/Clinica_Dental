class CreateComponentes < ActiveRecord::Migration[5.1]
  def change
    create_table :componentes do |t|

      t.timestamps
    end
  end
end
