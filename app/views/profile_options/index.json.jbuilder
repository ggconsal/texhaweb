json.array!(@profile_options) do |profile_option|
  json.extract! profile_option, :id, :profile_id, :option_id, :poc_fecha
  json.url profile_option_url(profile_option, format: :json)
end
