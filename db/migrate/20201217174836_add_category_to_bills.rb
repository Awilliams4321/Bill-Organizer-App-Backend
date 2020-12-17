class AddCategoryToBills < ActiveRecord::Migration[6.0]
  def change
    add_reference :bills, :category, foreign_key: true
  end
end
