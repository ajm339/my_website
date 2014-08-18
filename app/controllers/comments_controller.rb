class CommentsController < ApplicationController
    
    def create
        @post = Post.find(params[:post_id])
        
        respond_to do |format|
	      if (comment_params[:body].present? && comment_params[:name].present? && comment_params[:email].present?)
	      	@comment = @post.comments.create!(comment_params)
	        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @post }
          comment_email(@comment)
          comment_notification_email(@comment)
	      else
	        format.html { redirect_to @post, notice: 'Comment was missing fields, it was not created.' }
	        format.json { render json: @post.errors, status: :unprocessable_entity }
	      end
	    end
    end

    def show
    end

    def destroy
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to blog_path }
        format.json { head :no_content }
      end
    end
    
    
    def comment_params
        params.require(:comment).permit(:body, :name, :email)
    end
    
    
end