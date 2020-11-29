class RoomsChannel < ApplicationCable::Channel
  def subscribed
    @room = Room.find_by(id: para)
    stream_from "rooms_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # raise NotImplementedError
  end
end
