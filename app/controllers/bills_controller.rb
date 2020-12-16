class BillsController < ApplicationController

    def index
        bills = Bill.all 
        render json: bills.to_json
    end

    def show
        bill = Bill.find_by(id: params[:id])
        render json: bill.to_json
    end
end
