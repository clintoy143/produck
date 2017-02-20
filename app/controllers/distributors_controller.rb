class DistributorsController < ApplicationController
    def index
    end
    
    def show
    end
    
    def new
        @distributor = Distributor.new
    end
    
    def create
        @distributor = Distributor.create(distributor_params)
        if @distributor.save 
            redirect_to '/'            
        end
    end
    
    private
        def distributor_params
            params.require(:distributor).permit(:email, :password_digest)
        end
end
