class BillsController < ApplicationController

    def index
        bills = Bill.all 
        render json: bills.to_json
    end
end
