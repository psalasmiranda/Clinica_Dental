Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  get 'pacientes/', to: 'pacientes#principal'
  #vista donde lista todos los insumos
  post 'pacientes/Listar/', to: 'pacientes#index', as: 'listar_paciente'
  #vista donde muestra la descripcion del insumo
  #-------------------------------------------------------------------------
  post 'pacientes/Listar/:id',to:'pacientes#mostrar', as: 'paciente'
  get 'pacientes/Listar/:id',to:'pacientes#mostrar'
  #ruta para el volver de la descripcion del insumo
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



  get 'agendas/', to: 'agendas#principal'
  #vista donde lista todos los insumos
  post 'agendas/Listar/', to: 'agendas#index', as: 'listar_agenda'
  #vista donde muestra la descripcion del insumo
  #-------------------------------------------------------------------------
  post 'agendas/Listar/:id',to:'agendas#mostrar', as: 'agenda'
  get 'agendas/Listar/:id',to:'agendas#mostrar'
  #ruta para el volver de la descripcion del insumo
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



  get 'usuarios/', to: 'usuarios#principal'
  #vista donde lista todos los insumos
  post 'usuarios/Listar/', to: 'usuarios#index', as: 'listar_usuario'
  #vista donde muestra la descripcion del insumo
  #-------------------------------------------------------------------------
  post 'usuarios/Listar/:id',to:'usuarios#mostrar', as: 'usuario'
  get 'usuarios/Listar/:id',to:'usuarios#mostrar'
  #ruta para el volver de la descripcion del insumo
  get 'usuarios/Listar/', to: 'usuarios#index', as: 'volver_usuario'
  #-------------------------------------------------------------------------
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


  get 'agentes/', to: 'agente#index'
  post 'agentes/nuevo', to: 'agente#nuevo', as: 'nuevo_agente'
  get 'agentes/:id',to:'agente#mostrar', as: 'agente'
  get 'agentes/:id/editar',to: 'agente#editar', as: 'editar_agente'
  put 'agentes/:id' ,to: 'agente#update'
  patch 'agentes/:id' ,to: 'agente#update'
  post 'agentes/', to: 'agente#crear'
  delete 'agentes/:id',to: 'agente#eliminar'

  get 'tratamientos/', to: 'tratamientos#index'
  get 'tratamientos/nuevo', to: 'tratamientos#nuevo', as: 'nuevo_tratamiento'
  get 'tratamientos/:id',to:'tratamientos#mostrar', as: 'tratamiento'
  get 'tratamientos/:id/editar',to: 'tratamientos#editar', as: 'editar_tratamiento'
  put 'tratamientos/:id' ,to: 'tratamientos#update'
  patch 'tratamientos/:id' ,to: 'tratamientos#update'
  post 'tratamientos/', to: 'tratamientos#crear'
  delete 'tratamientos/:id',to: 'tratamientos#eliminar'


  resources :sessions

  get 'grados/', to: 'grados#principal'
  #vista donde lista todos los insumos
  post 'grados/Listar/', to: 'grados#index', as: 'listar_grado'
  #vista donde muestra la descripcion del insumo
  #-------------------------------------------------------------------------
  post 'grados/Listar/:id',to:'grados#mostrar', as: 'grado'
  get 'grados/Listar/:id',to:'grados#mostrar'
  #ruta para el volver de la descripcion del insumo
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
end
