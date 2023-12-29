class CommentsController < ApplicationController
  def new
  @book = Book.find(params[:book_id])
  @comment = @book.comment.new
end

def create
  book = Book.find(params[:book_id])
  @comment = book.comment.create(comment_params)

  if @comment.save
    redirect_to book_path(book.id), notice: 'Comment was successfully created.'
  else
    render :new
  end
end

private

def comment_params
  params.require(:comment).permit(:body, :customer_id, :book_id)
end
end