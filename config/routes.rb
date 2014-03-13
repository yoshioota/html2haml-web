Html2hamlWeb::Application.routes.draw do

  get 'converter/index'

  match 'api/:action' => 'api', via: [:get, :post]

  root 'converter#index'
end
