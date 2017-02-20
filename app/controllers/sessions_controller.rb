class SessionsController < ApplicationController
    def new
    end
    
    def create
        if params[:mode] == "supplier"
            @supplier = Supplier.find_by(params[:email])
        else
            @distributor
        end    
    end
end
