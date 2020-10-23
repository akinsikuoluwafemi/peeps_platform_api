class MessagesChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find(params[:room])
    stream_from "room"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
