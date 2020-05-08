class PostsController < ApplicationController

    def create
        Post.create(post_params)
        
        redirect_to root_path
    end

    def show
        @post = Post.find(params[:id])
    end 

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
      
        if @post.update(post_params)
          redirect_to @post
        else
          render 'edit'
        end
    end

    def destroy
        @post = current_user.posts.find(params[:id])
        @post.destroy
        redirect_to user_path(current_user)
    end
    
    private

    def post_params
        params.require(:post).permit(:description, :image, :user_id)
    end

end
