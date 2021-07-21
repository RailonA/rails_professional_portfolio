class MainController < ApplicationController 

    def index
        @user = User.new
    end

end