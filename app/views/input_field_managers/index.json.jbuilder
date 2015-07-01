json.array!(@input_field_managers) do |input_field_manager|
  json.extract! input_field_manager, :id, :name, :description
  json.url input_field_manager_url(input_field_manager, format: :json)
end
