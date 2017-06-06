json.extract! insumo, :id, :cantidad, :nombre, :ingreso, :vencimiento, :created_at, :updated_at
json.url insumo_url(insumo, format: :json)
