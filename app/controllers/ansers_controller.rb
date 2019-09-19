class AnsersController < ApplicationController
  def new
    @anser = Anser.new
  end
  
  def create
    @anser = Text.find(params[:anser][:text_id]).ansers.new(anser_params)
    if @anser.save
      redirect_to texts_path, success: '回答を作成しました'
    else
      flash.now[:danger] = "回答の作成に失敗しました"
    end
  end
  
  def show
    @anser = Anser.where(text_id: params[:id].to_i)
  end
  
private
  def anser_params
    params.require(:anser).permit(:description)
  end
  
end
