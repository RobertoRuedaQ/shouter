class AddNullFalseToShouts < ActiveRecord::Migration[6.0]
  def change
    change_column_null :shouts, :user_id, null: false
    change_column_null :shouts, :content_type, null: false
    change_column_null :shouts, :content_id, null: false
  end
end
