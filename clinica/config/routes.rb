Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  get 'pacientes/', to: 'pacientes#index'
  get 'pacientes/nuevo', to: 'pacientes#nuevo', as: 'nuevo_paciente'
  get 'pacientes/:id',to:'pacientes#mostrar', as: 'paciente'
  get 'pacientes/:id/editar',to: 'pacientes#editar', as: 'editar_paciente'
  put 'pacientes/:id' ,to: 'pacientes#update'
  patch 'pacientes/:id' ,to: 'pacientes#update'
  post 'pacientes/', to: 'pacientes#crear'
  delete 'pacientes/:id',to: 'pacientes#eliminar'

  get 'agendas/', to: 'agendas#index'
  get 'agendas/nuevo', to: 'agendas#nuevo', as: 'nuevo_agenda'
  get 'agendas/:id',to:'agendas#mostrar', as: 'agenda'
  get 'agendas/:id/editar',to: 'agendas#editar', as: 'editar_agenda'
  put 'agendas/:id' ,to: 'agendas#update'
  patch 'agendas/:id' ,to: 'agendas#update'
  post 'agendas/', to: 'agendas#crear'
  delete 'agendas/:id',to: 'agendas#eliminar'

  get 'usuarios/', to: 'usuarios#index'
  get 'usuarios/nuevo', to: 'usuarios#nuevo', as: 'nuevo_usuario'
  get 'usuarios/:id',to:'usuarios#mostrar', as: 'usuario'
  get 'usuarios/:id/editar',to: 'usuarios#editar', as: 'editar_usuario'
  put 'usuarios/:id' ,to: 'usuarios#update'
  patch 'usuarios/:id' ,to: 'usuarios#update'
  post 'usuarios/', to: 'usuarios#crear'
  delete 'usuarios/:id',to: 'usuarios#eliminar'

  #routeos de insumo
  #vista inicial de insumo
  get 'insumos/principal'
  #vista donde lista todos los insumos
  post 'insumos/principal/index', to: 'insumos#index', as: 'listar_insumo'
  #vista donde muestra la descripcion del insumo
  #-------------------------------------------------------------------------
  post 'insumos/principal/index/:id',to:'insumos#mostrar', as: 'insumo'
  #ruta para el volver de la descripcion del insumo
  get 'insumos/principal/index', to: 'insumos#index', as: 'volver_insumo'
  #-------------------------------------------------------------------------
  post 'insumos/principal/index/:id/editar',to: 'insumos#editar', as: 'editar_insumo'
  #falta arreglar estas rutas
  put 'insumos/principal/index/:id' ,to: 'insumos#update'
  patch 'insumos/principal/index/:id' ,to: 'insumos#update'
  post 'insumos/principal/nuevo', to: 'insumos#nuevo', as: 'nuevo_insumo'
  post 'insumos/', to: 'insumos#crear'
  delete 'insumos/principal/index/:id',to: 'insumos#eliminar'

  

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


end
