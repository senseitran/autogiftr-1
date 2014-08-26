json.array!(@occasions) do |occasion|
  json.extract! occasion, :id, :name, :date, :message, :occasion_type, :recipient_id
  json.url occasion_url(occasion, format: :json)
end
