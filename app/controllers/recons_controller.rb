class ReconsController < ApplicationController
  respond_to :html

  def index
    @recon = Recon.new
  end

  def new
    @recon = Recon.new
    @form = true
  end

  def search
    @recon = Recon.new(params[:recon])
    @recon.save!

    respond_with @recon do |format|
      format.html { render 'search', :layout => false }
    end
  end
end
