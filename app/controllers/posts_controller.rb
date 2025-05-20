class PostsController < ApplicationController
    def index
        @post = Post.all
    end
     def new
        @post = Post.new
     end
     def create 
        @post = Post.new(Post_params)
        if @post.save 
            redirect_to @post
        else
            render "new"
        end

     end
private
def post_params
    params.require(:Post).permit(:title, :content)
end
end
