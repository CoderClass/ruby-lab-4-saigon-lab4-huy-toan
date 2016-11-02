class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    room_id = params[:room_id]
    m = Room.find(room_id).messages.new(message_params)
    if m.save
      flash[:success] = "send success"
    else
      flash[:alert] = "send fail"
    end
    redirect_to room_messages_path(room_id)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
