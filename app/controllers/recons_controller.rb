class ReconsController < ApplicationController

  def index
    @recon = Recon.new
  end

  def new
    @recon = Recon.new
    @form = true
  end

  def create

  end
end
