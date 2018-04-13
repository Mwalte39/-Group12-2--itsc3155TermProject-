class VotesController < ApplicationController
    def create
        @poll = Poll.find(params[:poll_id])
        @vote = @poll.votes.create(vote_params) 
        redirect_to polls_path
    end
    
    def index
        @poll = Poll.find(params[:poll_id])
    end
    
    def new
        @poll = Poll.find(params[:poll_id])
    end
    
    def show
        @poll = Poll.find(params[:poll_id])
        @votes = @poll.votes.all
    end
    
    
    
    private
        def vote_params
            params.require(:vote).permit(:selection)
        end
end
