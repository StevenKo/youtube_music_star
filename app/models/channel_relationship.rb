class ChannelRelationship < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :direct_channel, :foreign_key => "direct_relative_id",  :class_name => "Channel"
  belongs_to :inverse_channel,  :foreign_key => "inverse_relative_id",   :class_name => "Channel"
end
