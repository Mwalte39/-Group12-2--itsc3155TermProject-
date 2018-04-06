class PollsController < ApplicationController
    def new
        
    end
    
    def create
        render plain: params[:poll].inspect
    end
end
