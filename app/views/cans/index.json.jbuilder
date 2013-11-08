json.array!(@cans) do |can|
  json.extract! can, :name, :price, :qua
  json.url can_url(can, format: :json)
end
