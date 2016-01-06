json.array!(@apples) do |apple|
  json.extract! apple, :id
  json.url apple_url(apple, format: :json)
end
