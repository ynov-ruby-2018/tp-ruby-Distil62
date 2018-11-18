class GoldenBookController < ApplicationController
  # Tout le monde peux commenter ?! Pas d'authentification à l'entrée ?!
  
  def index
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save

    redirect_to golden_book_index_path
  end

  private
  def comment_params
    params.require(:comment).permit(
        :content,
        :user_id,
    ).merge(user_id: current_user.id)
  end

end
