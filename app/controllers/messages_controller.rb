class MessagesController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @messages = Message.all
  end

  def new
    @messages = Message.new
  end

  def create
    Message.create(message_params)
    redirect_to messages_path
  end

  def show
    @message = Message.find(params[:id])
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy
  end

  private
  def message_params
    params.require(:message).permit(:nickname, :title, :year, :month, :day, :start, :end, :money, :text, :user_id, :city_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
