json.extract! agente, :id, :rut, :nombre, :apellido, :empresa, :telefono, :comuna, :direccion, :correo, :created_at, :updated_at
json.url agente_url(agente, format: :json)
