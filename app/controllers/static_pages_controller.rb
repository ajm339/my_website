class StaticPagesController < ApplicationController
    def home
    end
    
    def blog
    	@posts = Post.order("id DESC").all
    end

    def aws_guide
    end

end
