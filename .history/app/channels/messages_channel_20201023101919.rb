class MessagesChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find(params[:room])
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end