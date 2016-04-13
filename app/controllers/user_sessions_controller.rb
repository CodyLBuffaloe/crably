class UserSessionsController < ApplicationController

    def new
    end

    def create

        if login(params[:email], params[:password])

            redirect_back_or_to(users_path, notice: "Login successful.")

        else

            redirect_back_or_to(login_path)
            flash.now.alert = "Login failed. Please try again."
        end

    end

    def destroy

        logout
        redirect_to(login_path)

    end

end
