class EventsController < ApplicationController
 
  require 'twilio-ruby'
  require("bundler")
  Bundler.require()

    def send_text(input)
        # Your Account Sid and Auth Token from twilio.com/console
        # and set the environment variables. See http://twil.io/secure
        account_sid = ENV["TWILIO_ACCOUNT_SID"]
        auth_token = ENV["TWILIO_AUTH_TOKEN"]
        @client = Twilio::REST::Client.new(account_sid, auth_token)
        
    
        message = @client.messages.create(
            body: "#{input}",
            from: '+12672144969',
            to: '+19147557095'
        )
        puts message.sid
    end 
    
    def index
        @events = @current_user.events 
    end 

    def show
        @event = Event.find(params[:id])
        @events = Event.all
        # @message = Message.find(params[:id])
    end 

    def new 
       @event = Event.new
       @message = Message.new
    end 

    def create 
        @event = Event.create(event_params)
        
        if @event.valid? 
            redirect_to event_path(@event)
            # send_text(event_params[:category])
        else 
            flash[:errors_array] = @event.errors.full_messages
            redirect_to new_event_path
        end  
        
    end 


    def edit 
        @event = Event.find(params[:id])
    end 

    def update 
        @event = Event.find(params[:id])

        if @event.update(event_params)
            redirect_to event_path(@event)
        else 
            flash[:errors_array] = @event.errors.full_messages
            redirect_to edit_event_path(@event)
        end 
    end 

    def destroy 
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_path 
    end 

    private 

    def event_params
        params.require(:event).permit(:date, :time, :event_name, :note, :category, :user_id, :contact_id)
    end 
    
    
end
