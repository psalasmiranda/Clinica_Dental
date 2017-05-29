class AddForeigninsumoAndmaterial < ActiveRecord::Migration[5.1]
  def change
    add_column :materials, :insumos_id, :integer
    add_foreign_key :materials, :insumos, column: :insumos_id, primary_key: :id
  end
end
