class PollsController < ApplicationController
    def show
       @poll = Poll.find(params[:id]) 
    end
    
    def new
        
    end
    
    def index
       @polls = Poll.all 
    end
    
    def create
        @poll = Poll.new(poll_params)
        
        @poll.save
        redirect_to @poll
    end
    
    
end

private
    def poll_params
       params.require(:poll).permit(:question, :answer1, :answer2, :answer3, :answer4) 
    end