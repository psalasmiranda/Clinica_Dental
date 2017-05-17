class AddForeigninsumoAndmaterial < ActiveRecord::Migration[5.1]
  def change
    add_colum :material, :insumo_id, :integer
    add_foreign_key :mercado, :insumos, colum: :insumo_id, primary_key: :id
  end
end
