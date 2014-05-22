json.array!(@tickets) do |ticket|
  json.extract! ticket, :ticketName, :ticketDescription
  json.url ticket_url(ticket, format: :json)
end
