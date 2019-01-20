class CommentsController < ApplicationController
  before_action :set_quote, only: [:new, :create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.quote = @quote

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @quote, notice: 'Your comment has been saved.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :author)
    end

    def set_quote
      @quote = Quote.find(params[:quote_id])
    end
end
