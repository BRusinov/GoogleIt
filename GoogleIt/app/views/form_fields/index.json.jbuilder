json.array!(@form_fields) do |form_field|
  json.extract! form_field, :id
  json.url form_field_url(form_field, format: :json)
end
