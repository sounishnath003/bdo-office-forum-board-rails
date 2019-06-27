class HomeController < ApplicationController
  def index
    @notices = Notice.all.order("created_at DESC")
  end

  def terms
  end

  def privacy
  end
end
