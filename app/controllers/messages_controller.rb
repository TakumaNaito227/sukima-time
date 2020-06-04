class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(messages_params)
  end

  def show
  end

  private
def messages_params
  params.require(:message).permit(:name, :image, :text)
end

end
