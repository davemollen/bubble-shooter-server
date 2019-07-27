class DisableNullForNames < ActiveRecord::Migration[6.0]
  def change
    change_column_null :scores, :name, false
  end
end
