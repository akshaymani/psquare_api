class CreateCheckins < ActiveRecord::Migration
  def self.up
    create_table :checkins do |t|
      t.integer :user_id
      t.integer :venue_id
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :checkins
  end
end
