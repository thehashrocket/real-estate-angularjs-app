class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :ticketName
      t.string :ticketDescription

      t.timestamps
    end
  end
end
