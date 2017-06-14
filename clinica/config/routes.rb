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

    get 'personals/', to: 'personal#index'
    get 'personals/nuevo', to: 'personal#nuevo', as: 'nuevo_personal'
    get 'personals/:id',to:'personal#mostrar', as: 'personal'
    get 'personals/:id/editar',to: 'personal#editar', as: 'editar_personal'
    put 'personals/:id' ,to: 'personal#update'
    patch 'personals/:id' ,to: 'personal#update'
    post 'personals/', to: 'personal#crear'
    delete 'personals/:id',to: 'personal#eliminar'


      get 'proveedors/', to: 'proveedor#index'
      get 'proveedors/nuevo', to: 'proveedor#nuevo', as: 'nuevo_proveedor'
      get 'proveedors/:id',to:'proveedor#mostrar', as: 'proveedor'
      get 'proveedors/:id/editar',to: 'proveedor#editar', as: 'editar_proveedor'
      put 'proveedors/:id' ,to: 'proveedor#update'
      patch 'proveedors/:id' ,to: 'proveedor#update'
      post 'proveedors/', to: 'proveedor#crear'
      delete 'proveedors/:id',to: 'proveedor#eliminar'

end
