class EventsController < ApplicationController


    def index
        @events = Event.all
    end
    
    def show 
        @event = Event.find(params[:id])
        @main_event_fighter = MainEventFighter.find_by(event: @event)
    end
    
    def new 
        @event = Event.new
    end
    
    private

    def event_params
        params.require(:event).permit
    end  

end
