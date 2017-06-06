Rails.application.routes.draw do
  resources :insumos
  resources :funcionarios
  resources :agentes
  resources :tratamientos
  resources :agendas
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
