class DistributorProfilesController < ApplicationController
   
    def new
        @profile = DistributorProfile.new
        @distributor = Distributor.find(params[:distributor_id])
    end
    
    def create
    end
    
    def update
    end
end
