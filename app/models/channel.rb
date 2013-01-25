class Channel < ActiveRecord::Base
  attr_accessible :name, :is_singer, :link, :area_id
  belongs_to :area
  
  has_many :direct_channels_ship, :foreign_key => 'inverse_relative_id', :class_name => 'ChannelRelationship'
  has_many :inverse_channels_ship,  :foreign_key => 'direct_relative_id',   :class_name => 'ChannelRelationship'    
  has_many :direct_channels, :through => :direct_channels_ship
  has_many :inverse_channels,  :through => :inverse_channels_ship
  
  scope :area_channels, lambda { |area_id| where('area_id = (?)', area_id) }
  # scope :area_not_singer_channels, lambda { |area_id| where('area_id = (?) AND is_singer = false', area_id) }

  def add_relative_channel channel
    self.direct_channels << channel
    channel.direct_channels << self
  end
end
