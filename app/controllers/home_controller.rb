class HomeController < ApplicationController
  def index
    if current_user
      @posts = Post.order(created_at: :desc).paginate(:page => params[:page], :per_page => 20)
      respond_to do |format|
        format.html
        format.js
      end
    else
      redirect_to new_user_session_path
    end
  end
end
