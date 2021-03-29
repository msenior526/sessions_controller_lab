class SessionsController < ApplicationController

    def new
    end

    def create
        username = params[:name]
        if username.nil? || username.empty?
            redirect_to login_path
        else
            session[:name] = username
            if session[:name]
                redirect_to root_path
            end
        end
    end

    def destroy
        if session[:name]
            session.destroy
        end
    end
end