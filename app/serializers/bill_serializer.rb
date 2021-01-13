class BillSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :creditor, :balance_owed, :monthly_payment, :due_date, :category_id, :category 
end
