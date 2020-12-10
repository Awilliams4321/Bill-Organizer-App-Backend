class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.string :creditor
      t.integer :balance_owed
      t.integer :monthly_payment
      t.integer :due_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
