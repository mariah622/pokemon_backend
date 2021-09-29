class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end 

    def create 
        comment = Comment.new(comment_params)
        # byebug
        if comment.save
            render json: comment
        else
            render json: {error: "Could not create comment."} 
        end 

    end

    def update 
        comment = Comment.find_by_id(params[:id])
        if comment.update(comment_params)
            render json: comment
        else 
            render json: {error: "Could not update comment. Try again."}
        end 
    end 

    def destroy
        comment = Comment.find_by_id(params[:id])
        comment.destroy
        render json: {message: "Comment has been deleted succesfully!"}
    end 
    
    
    private

    def comment_params 
        params.require(:comment).permit(:title, :description, :pokemon_id)
    end
end
