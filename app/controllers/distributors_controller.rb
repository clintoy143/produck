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
            flash.now[:success] = "You have successfully created your account!"
            session[:user_id] = @distributor.id
            redirect_to suppliers_path # "suppliers_path"
        else
            flash.now[:danger] = "Oops, something went wrong."
            render 'new'
        end
    end
    
    private
        def distributor_params
            params.require(:distributor).permit(:email, :password)
        end
end
