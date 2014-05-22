class TaskSerializer < ActiveModel::Serializer
  attributes :id, :ticketName, :ticketDescription
end
