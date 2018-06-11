class LikesController < ApplicationController
  def create
    # binding.pry
    @like = Like.create(topic_id: params[:topic_id], comment_id: params[:comment_id])
    @topic = Topic.where(:id => params[:topic_id]).first
    @comment = Comment.where(:id => params[:comment_id]).first
    # binding.pry
    if @like.save
      flash[:notice] = "Like was removed."
    else
      flash[:error] = "Like couldn't be created. Try again."
    end
    respond_to do |format|
       format.js { }
    end
  end
end
