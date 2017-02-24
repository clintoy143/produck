class DistributorProfilesController < ApplicationController
    
    def new
        @profile = DistributorProfile.new
    end
    
end
