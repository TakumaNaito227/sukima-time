class MessagesController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @messages = Message.all.order('created_at DESC')
  end

  def new
    @messages = Message.new
  end

  def create
    @message = Message.create(message_params)
    if @message.save
      redirect_to messages_path, notice: '登録が完了しました'
    else
      @message.new
      render :new
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  def destroy
    message = Message.find(params[:id])
    if message.destroy
      redirect_to messages_path, notice: 'メッセージが削除されました'
    else
      flash.now[:alert] = '更新に失敗しました'
      render :index
    end
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
    params.require(:message).permit(:title, :year, :month, :day, :start, :end, :money, :text, :user_id, :city_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to messages_path unless user_signed_in?
  end

end
