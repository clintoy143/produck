class SuppliersController < ApplicationController
    before_action :authorize_distributor, only: [:index]
    
    def index
        @supplier = Supplier.all
    end
    
    def show
    end
    
    def new
        @supplier = Supplier.new
    end
    
    def create
        @supplier = Supplier.create(supplier_params)
        if @supplier.save
            redirect_to suppliers_path
        else
            render "new"
        end
    end
    
    private
        def supplier_params
            params.require(:supplier).permit(:email, :name, :password)
        end
    
end
