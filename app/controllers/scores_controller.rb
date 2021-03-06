class ScoresController < ApplicationController
  def index
    @scores = Score.all
    render json: @scores
  end

  def show
    @score = Score.find(params[:id])
    render json: @score
  end

  def create
    @score =  Score.create(user_id:params[:user_id],song_id:params[:song_id], score:params[:score])
    render json: @score.score_show
  end

  private

  def score_params
    params.require(:score).permit(:user_id,:song_id,:score)
  end
end
