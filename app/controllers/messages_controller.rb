class MessagesController < ApplicationController

    def index
        @messages = Message.all 
    end 

    def show
        @message = Message.find(params[:id])
    end 

    def new 
       @message = Message.new 
    end 

    def create 
        @message = Message.create(message_params)
        redirect_to message_path(@message)
    end 

    def edit 
        @message = Message.find(params[:id])
    end 

    def update 
        @message = Message.find(params[:id])
        @message.update(message_params)
        redirect_to message_path(@message)
    end 

    def destroy 
        @message = Message.find(params[:id])
        @message.destroy
        redirect_to messages_path 
    end 

    private 

    def message_params
        params.require(:message).permit(:event_id, :title, :body, :image)
    end 
    
    
end
