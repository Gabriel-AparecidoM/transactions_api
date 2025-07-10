Rails.application.routes.draw do
  post "/transacoes", to: "transacoes#create"
  delete "/transacoes", to: "transacoes#destroy_all"
  get "/estatistica", to: "transacoes#statistics"
end
