class HomeController < ApplicationController
  def index
    @notices = Notice.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  end

  def terms
  end

  def privacy
  end
end
