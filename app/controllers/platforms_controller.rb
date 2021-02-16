class PlatformsController < ApplicationController


    def index
        @platforms = Platform.all
    end
    
    def show 
        @platform = Platform.find(params[:id])
    end
    
    def new 
        @platform = Platform.new
    end
    
    private

    def platform_params
        params.require(:platform).permit
    end  

end
