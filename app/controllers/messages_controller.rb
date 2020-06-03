class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @messages = Message.new
  end

  def show
  end

end
