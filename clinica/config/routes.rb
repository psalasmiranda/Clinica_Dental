Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  get 'pacientes/', to: 'pacientes#principal'
  #vista donde lista todos los pacientes
  post 'pacientes/Listar/', to: 'pacientes#index', as: 'listar_paciente'
  #vista donde muestra la descripcion del paciente
  #-------------------------------------------------------------------------
  post 'pacientes/Listar/:id',to:'pacientes#mostrar', as: 'paciente'
  get 'pacientes/Listar/:id',to:'pacientes#mostrar'
  #ruta para el volver de la descripcion del paciente
  get 'pacientes/Listar/', to: 'pacientes#index', as: 'volver_paciente'
  #-------------------------------------------------------------------------
  post 'pacientes/Listar/:id/Editar',to: 'pacientes#editar', as: 'editar_paciente'
  put 'pacientes/Listar/:id' ,to: 'pacientes#update'
  patch 'pacientes/Listar/:id' ,to: 'pacientes#update'
  #------------------------------------------------------
  post 'pacientes/Nuevo', to: 'pacientes#nuevo', as: 'nuevo_paciente'
  post 'pacientes', to: 'pacientes#crear'
  #------------------------------------------------------------------------
  delete 'pacientes/Listar/:id',to:'pacientes#eliminar'
  post 'pacientes/historial/:id', to:'pacientes#historial', as: 'historial_paciente'


  get 'agendas/', to: 'agendas#principal'
  #vista donde lista todos los agendas
  post 'agendas/Listar/', to: 'agendas#index', as: 'listar_agenda'
  #vista donde muestra la descripcion del agenda
  #-------------------------------------------------------------------------
  post 'agendas/Listar/:id',to:'agendas#mostrar', as: 'agenda'
  get 'agendas/Listar/:id',to:'agendas#mostrar'
  #ruta para el volver de la descripcion del agenda
  get 'agendas/Listar/', to: 'agendas#index', as: 'volver_agenda'
  #-------------------------------------------------------------------------
  post 'agendas/Listar/:id/Editar',to: 'agendas#editar', as: 'editar_agenda'
  put 'agendas/Listar/:id' ,to: 'agendas#update'
  patch 'agendas/Listar/:id' ,to: 'agendas#update'
  #------------------------------------------------------
  post 'agendas/Nuevo', to: 'agendas#nuevo', as: 'nuevo_agenda'
  post 'agendas', to: 'agendas#crear'
  #------------------------------------------------------------------------
  delete 'agendas/Listar/:id',to:'agendas#eliminar'
  #Para el registro en la agenda
  get 'agendas/registro', to: 'agendas#registro', as: 'registro_agenda'
  #-------------------------------------------------------------------------para registro historial

  post 'agendas/:id/registro_editar', to: 'agendas#registro_editar', as: 'editar_registro_agenda'
  put 'agendas/registro_editar/:id' ,to: 'agendas#update_registro'
  patch 'agendas/registro_editar/:id' ,to: 'agendas#update_registro'
  #-------------------------------------------------------------------------para insumo
  get 'agendas/:id/registro_insumos', to: 'agendas#registro_insumos', as: 'volver_editar_registro'
  post 'agendas/:id/registro_insumos' ,to: 'agendas#registro_insumos', as: 'editar_registro_insumos'
  put 'agendas/registro_insumos/:id' ,to: 'agendas#update_registro_insumos'
  patch 'agendas/registro_insumos/:id' ,to: 'agendas#update_registro_insumos'
  #-------------------------------------------------------------------------para historial joha
  post 'agendas/:id/registro_editar/:id', to:'agendas#rehis', as: 'hist_usuario'
  get 'agendas/registro/', to: 'agendas#registro', as: 'volver_age'
  #-------------------------------------------------------------------------
  get 'usuarios/', to: 'usuarios#principal'
  #vista donde lista todos el personal
  post 'usuarios/Listar/', to: 'usuarios#index', as: 'listar_usuario'
  #vista donde muestra la descripcion del personal
  #-------------------------------------------------------------------------
  post 'usuarios/Listar/:id',to:'usuarios#mostrar', as: 'usuario'
  get 'usuarios/Listar/:id',to:'usuarios#mostrar'
  #ruta para el volver de la descripcion del personal
  get 'usuarios/Listar/', to: 'usuarios#principal', as: 'volver_usuario'
  #------------------------------------------------------------------------
  post 'usuarios/Listar/:id/Editar',to: 'usuarios#editar', as: 'editar_usuario'
  put 'usuarios/Listar/:id' ,to: 'usuarios#update'
  patch 'usuarios/Listar/:id' ,to: 'usuarios#update'
  #------------------------------------------------------
  post 'usuarios/Nuevo', to: 'usuarios#nuevo', as: 'nuevo_usuario'
  post 'usuarios', to: 'usuarios#crear'
  #------------------------------------------------------------------------
  delete 'usuarios/Listar/:id',to:'usuarios#eliminar'



  get 'insumos/', to: 'insumos#principal'
  #vista donde lista todos los insumos
  post 'insumos/Listar/', to: 'insumos#index', as: 'listar_insumo'

  #vista donde muestra la descripcion del insumo
  #-------------------------------------------------------------------------
  post 'insumos/Listar/:id',to:'insumos#mostrar', as: 'insumo'
  get 'insumos/Listar/:id',to:'insumos#mostrar'
  #ruta para el volver de la descripcion del insumo
  get 'insumos/Listar/', to: 'insumos#index', as: 'volver_insumo'
  #-------------------------------------------------------------------------
  post 'insumos/Listar/:id/Editar',to: 'insumos#editar', as: 'editar_insumo'
  put 'insumos/Listar/:id' ,to: 'insumos#update'
  patch 'insumos/Listar/:id' ,to: 'insumos#update'
  #------------------------------------------------------
  post 'insumos/Nuevo', to: 'insumos#nuevo', as: 'nuevo_insumo'
  post 'insumos', to: 'insumos#crear'
  #------------------------------------------------------------------------
  delete 'insumos/Listar/:id',to:'insumos#eliminar'


  get 'agentes/', to: 'agente#principal'
  #vista donde lista todos los  proveedores
  post 'agentes/Listar/', to: 'agente#index', as: 'listar_agente'
  #vista donde muestra la descripcion del proveedor
  #-------------------------------------------------------------------------
  post 'agentes/Listar/:id',to:'agente#mostrar', as: 'agente'
  get 'agentes/Listar/:id',to:'agente#mostrar'
  #ruta para el volver de la descripcion del proveedor
  get 'agentes/Listar/', to: 'agente#index', as: 'volver_agente'

  #-------------------------------------------------------------------------
  post 'agentes/Listar/:id/Editar',to: 'agente#editar', as: 'editar_agente'
  put 'agentes/Listar/:id' ,to: 'agente#update'
  patch 'agentes/Listar/:id' ,to: 'agente#update'
  #------------------------------------------------------
  post 'agentes/Nuevo', to: 'agente#nuevo', as: 'nuevo_agente'
  post 'agentes', to: 'agente#crear'
  #------------------------------------------------------------------------
  delete 'agentes/Listar/:id',to:'agente#eliminar'



  get 'tratamientos/', to: 'tratamientos#principal'
  #vista donde lista todos los tratamientos
  post 'tratamientos/Listar/', to: 'tratamientos#index', as: 'listar_tratamiento'
  #vista donde muestra la descripcion del tratamiento
  #-------------------------------------------------------------------------
  post 'tratamientos/Listar/:id',to:'tratamientos#mostrar', as: 'tratamiento'
  get 'tratamientos/Listar/:id',to:'tratamientos#mostrar'
  #ruta para el volver de la descripcion del tratamiento
  get 'tratamientos/Listar/', to: 'tratamientos#index', as: 'volver_tratamiento'
  #-------------------------------------------------------------------------
  post 'tratamientos/Listar/:id/Editar',to: 'tratamientos#editar', as: 'editar_tratamiento'
  put 'tratamientos/Listar/:id' ,to: 'tratamientos#update'
  patch 'tratamientos/Listar/:id' ,to: 'tratamientos#update'
  #------------------------------------------------------
  post 'tratamientos/Nuevo', to: 'tratamientos#nuevo', as: 'nuevo_tratamiento'
  post 'tratamientos', to: 'tratamientos#crear'
  #------------------------------------------------------------------------
  delete 'tratamientos/Listar/:id',to:'tratamientos#eliminar'



  resources :sessions

  get 'grados/', to: 'grados#principal'
  #vista donde lista todos los grados
  post 'grados/Listar/', to: 'grados#index', as: 'listar_grado'
  #vista donde muestra la descripcion del grado
  #-------------------------------------------------------------------------
  post 'grados/Listar/:id',to:'grados#mostrar', as: 'grado'
  get 'grados/Listar/:id',to:'grados#mostrar'
  #ruta para el volver de la descripcion del grado
  get 'grados/Listar/', to: 'grados#index', as: 'volver_grado'
  #-------------------------------------------------------------------------
  post 'grados/Listar/:id/Editar',to: 'grados#editar', as: 'editar_grado'
  put 'grados/Listar/:id' ,to: 'grados#update'
  patch 'grados/Listar/:id' ,to: 'grados#update'
  #------------------------------------------------------
  post 'grados/Nuevo', to: 'grados#nuevo', as: 'nuevo_grado'
  post 'grados', to: 'grados#crear'
  #------------------------------------------------------------------------
  delete 'grados/Listar/:id',to:'grados#eliminar'

  get 'gastados/', to: 'gastados#principal'
  #vista donde lista todos los insumos
  post 'gastados/Listar/', to: 'gastados#index', as: 'listar_gastado'

  #vista donde muestra la descripcion de lo gastado
  #-------------------------------------------------------------------------
  post 'gastados/Listar/:id',to:'gastados#mostrar', as: 'gastado'
  get 'gastados/Listar/:id',to:'gastados#mostrar'
  #ruta para el volver de la descripcion del insumo
  get 'gastados/Listar/', to: 'gastados#index', as: 'volver_gastado'
  #-------------------------------------------------------------------------n
  post 'gastados/Listar/:id/Editar',to: 'gastados#editar', as: 'editar_gastado'
  put 'gastados/Listar/:id' ,to: 'gastados#update'
  patch 'gastados/Listar/:id' ,to: 'gastados#update'
  #------------------------------------------------------n
  post 'gastados/Nuevo', to: 'gastados#nuevo', as: 'nuevo_gastado'
  post 'gastados', to: 'gastados#crear'
  #------------------------------------------------------------------------
  delete 'gastados/Listar/:id',to:'gastados#eliminar'

end
