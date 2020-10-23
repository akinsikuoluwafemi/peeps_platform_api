class MessagesChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find(params[:con])
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
