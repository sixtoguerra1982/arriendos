json.extract! usuario, :id, :name, :email, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
