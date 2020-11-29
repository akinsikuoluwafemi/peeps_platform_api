class RoomsChannel < ApplicationCable::Channel
  def subscribed
    @room = Room.find_by(id: params[:room])
    stream_for @room
  end

  def received(data)
    RoomsChannel.broadcast
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # raise NotImplementedError
  end
end
