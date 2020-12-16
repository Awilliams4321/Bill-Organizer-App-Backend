class BillsController < ApplicationController

    def index
        bills = Bill.all 
        render json: bills.to_json
    end

    def show
        bill = Bill.find_by(id: params[:id])
        render json: bill.to_json
    end

    private

    def bill_params
        params.require(:bill).permit(:name, :creditor, :balance_owed, :monthly_payment, :due_date, :user_id)
    end
end
