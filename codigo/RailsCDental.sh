rails new pro --database=postgresql -T -B
cd pro
bundle install 
rails g model paciente nombre:string paterno:string materno:string sexo:string rut:integer digito:integer edad:integer comuna:string direccion:string telefono:string --force-plural
rails g model funcionario nombre:string paterno:string materno:string telefono:string rut:integer digito:integer edad:integer correo:string contraseña:string cargo:string --force-plural
rails g model agenda hora:datetime  --force-plural
rails g model tratamiento nombre:string  descripcion:text  --force-plural
rails g model especialista  nombre:string --force-plural
rails g model insumo nombre:string cantidad:integer ingreso:datetime vencimiento:datetime --force-plural
rails g model agente nombre:string apellido:string empresa:string correo:string telefono:string --force-plural
rails g model listado --force-plural
rails g model categoria --force-plural
sudo su postgres





