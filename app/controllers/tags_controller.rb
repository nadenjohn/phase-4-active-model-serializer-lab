class TagsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    tags = Tag.all
    render json: tags, include: ['post_tags', 'post_tags.posts']
  end

  def show
    tag = Tag.find(params[:id])
    render json: tag, include: ['post_tags', 'post_tags.posts']
  
  end



  private

  def render_not_found_response
    render json: { error: "Tag not found" }, status: :not_found
  end

end
