class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @messages = Message.new
  end

  def create
    @message = Message.new(message_params)
    redirect_to root_path
  end

  private
  def message_params
    params.require(:message).permit(:nickname, :title, :year, :month, :day, :start, :end, :money, :text, :user_id, :city_id)
  end

end
