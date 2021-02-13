class FightersController < ApplicationController

    def index
        @fighters = Fighter.all
    end
    
    def show 
        @fighter = Fighter.find(params[:id])
    end
    
    def new 
        @fighter = Fighter.new
    end
    
    private

    def fighter_params
        params.require(:fighter).permit
    end    

end
