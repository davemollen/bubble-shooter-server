class V1::ScoresController < ApplicationController
  def index
    @scores = Score.order(high_score: :DESC).limit(10)

    render json: @scores, status: :ok
  end

  def create
    if Score.create!(score_params)
      @scores = Score.order(high_score: :DESC).limit(10)
      render json: @scores, status: :created
    end
  end

  private

  def score_params
    params.require(:score).permit(:name, :high_score)
  end
end
