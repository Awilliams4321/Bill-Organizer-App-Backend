class BillsController < ApplicationController

    def index
        bills = Bill.all 
        render json: BillSerializer.new(bills)
    end

    def show
        bill = Bill.find_by(id: params[:id])
        render json: BillSerializer.new(bill)
    end

    def create
        bill = Bill.new(bill_params)
        if bill.save
            render json: BillSerializer.new(bill)
        else
            render json: {errors: bill.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        bill = Bill.find_by(id: params[:id])
        bill.destroy
    end

    private

    def bill_params
        params.require(:bill).permit(:id, :name, :creditor, :balance_owed, :monthly_payment, :due_date, :category_id)
    end
end
