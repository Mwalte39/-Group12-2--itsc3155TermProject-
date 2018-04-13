class PollsController < ApplicationController
    def show
       @poll = Poll.find(params[:id]) 
    end
    
    def new
        
    end
    
    def edit
        @poll = Poll.find(params[:id])
    end
    
     def update
        @poll = Poll.find(params[:id])
        if @poll.update(poll_params)
            redirect_to @poll
        else
            render 'edit'
        end
    end
    
    def destroy
        @poll = Poll.find(params[:id])
        @poll.destroy
        
        redirect_to polls_path
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