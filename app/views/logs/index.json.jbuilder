json.array!(@logs) do |log|
  json.extract! log, :id, :goodthing, :idea, :rethink, :remember, :motibation
  json.url log_url(log, format: :json)
end
