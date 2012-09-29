class ReconsController < ApplicationController

  def index
    @recon = Recon.new
  end
end
