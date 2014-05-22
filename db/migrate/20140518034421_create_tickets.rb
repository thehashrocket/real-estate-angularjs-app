class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :ticketName
      t.string :ticketDescription

      t.timestamps
    end
  end
end
