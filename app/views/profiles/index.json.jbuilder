json.array!(@profiles) do |profile|
  json.extract! profile, :id, :pro_titulo, :pro_desc
  json.url profile_url(profile, format: :json)
end
