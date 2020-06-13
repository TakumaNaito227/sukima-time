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

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    message.update(message_params)
    if message.save
      redirect_to messages_path, notice: 'メッセージが更新されました'
    else
      flash.now[:alert] = '更新に失敗しました'
      render :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:nickname, :title, :year, :month, :day, :start, :end, :money, :text, :user_id, :city_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
