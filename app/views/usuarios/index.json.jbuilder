json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :endereco, :telefone, :estado, :tipo
  json.url usuario_url(usuario, format: :json)
end
