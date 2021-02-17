class EventsController < ApplicationController


    def index
        @events = Event.all
    end
    
    def show 
        @event = Event.find(params[:id])   
    end
    
    def new 
        @event = Event.new
    end
    
    private

    def event_params
        params.require(:event).permit
    end  

end
