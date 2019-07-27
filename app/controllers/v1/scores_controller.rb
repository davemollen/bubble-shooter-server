class V1::ScoresController < ApplicationController
  def index
    @scores = Score.order(high_score: :DESC).limit(10)

    render json: @scores, status: :ok
  end

  def create
    @score = Score.create!(score_params)
    render json: @score, status: :created
  end

  private

  def score_params
    params.require(:score).permit(:name, :high_score)
  end
end
