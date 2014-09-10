json.array!(@auditoria) do |auditorium|
  json.extract! auditorium, :id, :codigo, :programed_at
  json.url auditorium_url(auditorium, format: :json)
end
