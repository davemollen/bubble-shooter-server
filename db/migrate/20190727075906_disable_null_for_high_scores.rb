class DisableNullForHighScores < ActiveRecord::Migration[6.0]
  def change
    change_column_null :scores, :high_score, false
  end
end
