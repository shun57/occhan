class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages

    if @messages.length > 10
      @over_ten = true
      @messages = @messages[-10..-1]
    end

    if params[:m]
      @over_ten = false
      @messages = @conversation.messages
    end

    @message = @conversation.messages.build
  end

  def create
    @message = @conversation.messages.build(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id)
  end

  def ensure_correct_user
    if request.referer == nil
      redirect_to problems_path, notice: 'アクセスできません'
    end
  end
end
