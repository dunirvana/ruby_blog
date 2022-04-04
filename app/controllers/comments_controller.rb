class CommentsController < ApplicationController
  def create
    # Para debugar descomentar a linha abaixo, isso irá parar o processo e abrir uma ferramenta por linha de comando
    # binding.pry

    comment = Comment.create!(comments_params)

    redirect_to comment.post, notice: 'O seu comentário foi enviado.'
  end

  private 

  def comments_params
    params.require(:comment).permit(:post_id, :author, :body)
  end
end
