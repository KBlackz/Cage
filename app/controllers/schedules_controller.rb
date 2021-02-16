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
        redirect_to schedule_path(@schedule.id)
    end

    def edit
        @schedule = schedule.find(params[:id])
    end

    def update
        @schedule = schedule.find(params[:id])
        @schedule.update(schedule_params)
        redirect_to schedule_path(@schedule)
    end

    def destroy
        @schedule = schedule.find(params[:id])
        @schedule.destroy
        redirect_to schedule_path
    end



    private

    def schedule_params
        params.require(:schedule).permit(:platform_id, :event_id, :fighter_id)
    end
end
