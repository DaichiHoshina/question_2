class TextsController < ApplicationController
  def index
    @texts = Text.all.order(created_at: :desc)
    @anser = Anser.all
  end
  
  def new
    @text = Text.new
  end
  
  def create
    @text = Text.new(text_params)
    if @text.save
      redirect_to texts_path, success: "質問を作成しました"
    else
      flash.now[:danger] = "質問の作成に失敗しました"
    end
  end
  
  def destroy
    @text = Text.find_by(id: params[:id])
    if @text.destroy
      redirect_to texts_path, success: "質問を削除しました"
    else
      flash.now[:danger] = "質問の削除に失敗しました"
    end
  end
    
private
  def text_params
    params.require(:text).permit(:first, :second, :third, 
      :forth, :fifth)
  end
  
end
