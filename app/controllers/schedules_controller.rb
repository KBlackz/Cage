class SchedulesController < ApplicationController
    def index
        @schedule = Schedule.all
        
    end

    def new 
        @schedules = Schedule.new
        @platforms = Platform.all
        @events = Event.all
        @fighters = Fighter.all 
    end
    
    def create
        @schedule = Schedule.create(schedule_params)
        redirect_to event_path(@schedule.event.id)
    end

    def edit
        @schedule = Schedule.find(params[:id])
        @events = Event.all 
        @fighters = Fighter.all
    end

    def update
        @schedule = Schedule.find(params[:id])
        @schedule.update(schedule_params)
        redirect_to event_path(@schedule.event.id)
    end

    def destroy
        @schedule = Schedule.find(params[:id])
        @schedule.destroy
        redirect_to event_path(@schedule.event.id)
    end



    private

    def schedule_params
        params.require(:schedule).permit(:platform_id, :event_id, :fighter_id)
    end
end
