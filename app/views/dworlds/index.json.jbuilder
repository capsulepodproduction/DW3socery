json.array!(@dworlds) do |dworld|
  json.extract! dworld, :id, :name, :email, :question, :datesend
  json.url dworld_url(dworld, format: :json)
end
