class ReconsController < ApplicationController

  def index
    @recon = Recon.new
  end

  def new
    @recon = Recon.new
  end

  def create

  end
end
