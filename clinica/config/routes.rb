Rails.application.routes.draw do


  get  'insumos/', to: 'insumos#index'
  get  'insumos/:id', to: 'insumos#mostrar' , as: 'insumo'
  get  'insumos/nuevo', to: 'insumos#nuevo' , as: 'nuevo_insumo'
  get  'insumos/:id/editar', to: 'insumos#editar' , as: 'editar_insumo'
  post 'insumos/', to: 'insumos#crear'
  put 'insumos/:id' ,to: 'insumos#update'
  patch 'insumos/:id' ,to: 'insumos#update'
  delete 'insumos/:id',to: 'insumos#eliminar'
end
