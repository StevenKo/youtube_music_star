class AddChannelThumbnail < ActiveRecord::Migration
  def change
    add_column :channels, :thumbnail, :string
  end
end
