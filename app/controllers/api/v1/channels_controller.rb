class Api::V1::ChannelsController < Api::ApiController
  def index
    area_id = params[:area_id]
    channels = Channel.area_channels(area_id).select("id,name,link,thumbnail")
    render :json => channels
  end
end
