class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.boolean :is_singer, :default => false
      t.string :link
      t.integer :area_id
      t.timestamps
    end
    add_index :channels, :area_id
  end
end
