require 'spec_helper'

describe ReconsController do

  describe "GET 'index'" do

    it "should be success" do
      get :index
      response.should be_success
    end
  end

  describe "GET 'new'" do

    it "should be success" do
      get :new
      response.should be_success
    end
  end

  describe "POST 'search'" do

    it "should be success" do
      xhr :post, :search
      response.status.should == 200
    end

    it "should fetch the competition" do
      lambda do
        xhr :post, :search, {
          :company_name => 'SpongeCell',
          :idea => "advertising",
          :audience => 'consumer',
          :technology => 'web'
        }
      end.should change(Recon, :count).by 1
    end
  end
end
