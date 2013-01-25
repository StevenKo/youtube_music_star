class CreateChannelRelationships < ActiveRecord::Migration
  def change
    create_table :channel_relationships do |t|
      t.integer :direct_relative_id
      t.integer :inverse_relative_id

      t.timestamps
    end
    add_index :channel_relationships, :direct_relative_id
    add_index :channel_relationships, :inverse_relative_id
  end
end
