class DistributorProfilesController < ApplicationController
    before_action :authorize_distributor
    
    def new
        @profile = DistributorProfile.new
    end
    
    def create
    end
    
    def update
    end
end
