class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :businessName
      t.string :streetAddress
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
