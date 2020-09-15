class RemoveUserFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_reference :events, :user, index: true, foreign_key: true
  end
end
