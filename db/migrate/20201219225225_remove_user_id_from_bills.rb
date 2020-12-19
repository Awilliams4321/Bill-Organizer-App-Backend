class RemoveUserIdFromBills < ActiveRecord::Migration[6.0]
  def change
    remove_column :bills, :user_id, :integer
  end
end
