Rails.application.routes.draw do

  get 'agendas/', to: 'agendas#index'
  get 'agendas/nuevo', to: 'agendas#nuevo', as: 'nuevo_agenda'
  get 'agendas/:id',to:'agendas#mostrar', as: 'agenda'
  get 'agendas/:id/editar',to: 'agendas#editar', as: 'editar_agenda'
  put 'agendas/:id' ,to: 'agendas#update'
  patch 'agendas/:id' ,to: 'agendas#update'
  post 'agendas/', to: 'agendas#crear'
  delete 'agendas/:id',to: 'agendas#eliminar'

  get 'insumos/', to: 'insumos#index'
  get 'insumos/nuevo', to: 'insumos#nuevo', as: 'nuevo_insumo'
  get 'insumos/:id',to:'insumos#mostrar', as: 'insumo'
  get 'insumos/:id/editar',to: 'insumos#editar', as: 'editar_insumo'
  put 'insumos/:id' ,to: 'insumos#update'
  patch 'insumos/:id' ,to: 'insumos#update'
  post 'insumos/', to: 'insumos#crear'
  delete 'insumos/:id',to: 'insumos#eliminar'

end
