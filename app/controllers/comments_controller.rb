class CommentsController < ApplicationController
    
    def create
        @post = Post.find(params[:post_id])
        #@comment = @post.comments.create!(comment_params)
        puts '================================'
        puts comment_params
        puts params[:body].nil?.inspect
        puts params[:name].nil?.inspect
        puts params[:email].nil?.inspect

        respond_to do |format|
	      if (comment_params[:body].nil? || comment_params[:name].nil? || comment_params[:email].nil?)
	      	@comment = @post.comments.create!(comment_params)
	        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @post }
	      else
	        format.html { redirect_to @post, notice: 'Comment was missing fields, it was not created.' }
	        format.json { render json: @post.errors, status: :unprocessable_entity }
	      end
	    end
    end
    
    
    def comment_params
        params.require(:comment).permit(:body, :name, :email)
    end
    
    
end