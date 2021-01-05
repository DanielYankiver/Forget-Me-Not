class EventsController < ApplicationController
    def index
        @events = event.all 
    end 

    def show
        @event = event.find(params[:id])
    end 

    def new 
       @event = event.new 
    end 

    def create 
        @event = event.create(event_params)
        redirect_to event_path(@event)
    end 

    def edit 
        @event = event.find(params[:id])
    end 

    def update 
        @event = event.find(params[:id])
        @event.update(event_params)
        redirect_to event_path(@event)
    end 

    def destroy 
        @event = event.find(params[:id])
        @event.destroy
        redirect_to events_path 
    end 

    private 

    def event_params
        params.require(:event).permit(:date, :time, :event_name, :note, :category, :user_id, :contact_id)
    end 
    
    
end
