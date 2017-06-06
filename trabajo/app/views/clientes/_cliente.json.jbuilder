json.extract! cliente, :id, :rut, :nombre, :apellido, :telefono, :comuna, :direccion, :sexo, :edad, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
