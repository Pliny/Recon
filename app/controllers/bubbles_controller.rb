class BubblesController < ApplicationController

  respond_to :html

  def index
    respond_with nil do |format|
      format.html { render 'index', :layout => false }
    end
  end
end
