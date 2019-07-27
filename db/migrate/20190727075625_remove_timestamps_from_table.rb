class RemoveTimestampsFromTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :scores, :created_at, :string
    remove_column :scores, :updated_at, :string
  end
end
