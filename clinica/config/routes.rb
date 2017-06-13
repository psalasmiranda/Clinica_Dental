Rails.application.routes.draw do


    get 'insumos/', to: 'insumos#index'
    get 'insumos/nuevo', to: 'insumos#nuevo', as: 'nuevo_insumo'
    get 'insumos/:id',to:'insumos#mostrar', as: 'insumo'
    get 'insumos/:id/editar',to: 'insumos#editar', as: 'editar_insumo'
    put 'insumos/:id' ,to: 'insumos#update'
    patch 'insumos/:id' ,to: 'insumos#update'
    post 'insumos/', to: 'insumos#crear'
  delete 'insumos/:id',to: 'insumos#eliminar


end
