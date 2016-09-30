json.array!(@forms) do |form|
  json.extract! form, :id, :study, :investigator
  json.url form_url(form, format: :json)
end
