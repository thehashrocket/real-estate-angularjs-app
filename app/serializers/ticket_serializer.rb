class TicketSerializer < ActiveModel::Serializer
  attributes :id, :ticketName, :ticketDescription
end
