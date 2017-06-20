class CreateHistoria < ActiveRecord::Migration[5.1]
  def change
    create_table :historia do |t|

      t.timestamps
    end
  end
end
