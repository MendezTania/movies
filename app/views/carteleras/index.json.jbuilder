json.array!(@carteleras) do |cartelera|
  json.extract! cartelera, :id, :nombre, :genero, :rating
  json.url cartelera_url(cartelera, format: :json)
end
