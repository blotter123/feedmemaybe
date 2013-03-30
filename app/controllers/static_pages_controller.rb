class StaticPagesController < ApplicationController
  def home
    @feed_items = Event.paginate(page: params[:page], :per_page => 10, :order => 'id desc')
  end

  def about
  end
end
