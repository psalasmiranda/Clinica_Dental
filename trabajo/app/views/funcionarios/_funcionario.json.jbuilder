json.extract! funcionario, :id, :rut, :nombre, :apellido, :telefono, :comuna, :direccion, :sexo, :edad, :correo, :profesion, :contraseña, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
