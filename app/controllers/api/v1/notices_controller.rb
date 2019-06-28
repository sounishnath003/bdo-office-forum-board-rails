class Api::V1::NoticesController < ApplicationController

    def index
        @notices = Notice.all.order("created_at DESC")

        respond_to do |format|
            format.json { render :json => @notices, :status => :ok  }
        end

    end
    

end