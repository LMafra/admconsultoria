class MessagesController < ApplicationController
  
  def new
  	@message = Message.new
  end


  def create
    @message = Message.new(message_params)

    if @message.valid?
       MessageMailer.message_me(@message).deliver_now
    else
      render 'home#index'
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :phone, :company_name, :subject, :content)
  end
end
