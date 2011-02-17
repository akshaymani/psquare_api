class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :address_city
      t.string :address_state
      t.string :address_zipcode
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end

  def self.down
    drop_table :venues
  end
end
