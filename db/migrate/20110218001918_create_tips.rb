class CreateTips < ActiveRecord::Migration
  def self.up
    create_table :tips do |t|
      t.integer :venue_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :tips
  end
end
