class SupplierProfilesController < ApplicationController
    def new
        @profile = SupplierProfile.new
        @supplier = Supplier.find(params[:supplier_id])  
    end
    
    def create
        @profile = SupplierProfile.create(supplier_profile_params)
        if @profile.save
            redirect_to suppliers_path
        else
            render "new"
        end
    end
    
    def edit
        @profile = SupplierProfile.find_by(supplier_id: params[:supplier_id])
        @supplier = Supplier.find(params[:supplier_id])  
    end
    
    def update
        @profile = SupplierProfile.find_by(supplier_id: params[:supplier_id])
        if @profile.update_attributes(supplier_profile_params)
            redirect_to suppliers_path
        else
            render "edit"
        end
    end
    
    private
    
    def supplier_profile_params
        params.require(:supplier_profile).permit(:supplier_id, :address, :category, :store_name, :contact_number)
    end
end
