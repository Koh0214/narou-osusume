class LikesController < ApplicationController
  def create
    @like = Like.create(topic_id: params[:topic_id], comment_id: params[:comment_id])
    @likes = Like.where(comment_id: params[:comment_id])
    @comments = Comment.where(:topic_id => params[:topic_id])
  end
end
