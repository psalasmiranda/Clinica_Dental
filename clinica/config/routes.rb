Rails.application.routes.draw do
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
end
