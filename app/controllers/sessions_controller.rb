class SessionsController < ApplicationController
    def new
    end
    
    def create
        @distributor = Distributor.find_by(email: params[:session][:email])
        if @distributor && @distributor.authenticate(params[:session][:password])
            flash.now[:success] = "You are now logged-in"
            log_in @distributor
            redirect_to suppliers_path
        else
            flash.now[:danger] = "Email/password did not match"
            render 'new'
        
        end
    end
    
    def destroy
        log_out
        redirect_to '/login'
    end

    private
    
        def log_in(user)
            session[:user_id] = user.id
        end
end
