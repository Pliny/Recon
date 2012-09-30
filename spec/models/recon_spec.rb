require 'spec_helper'

describe Recon do
  use_vcr_cassette :crunchbase, :record => :none

  it "should fetch the competition after creating" do
    recon = FactoryGirl.build(:recon)
    recon.should_receive(:fetch_competitors).once
    recon.save!
  end

  it "should have the competition available after save" do
    FactoryGirl.create(:company, :name => 'mogreet')
    recon = FactoryGirl.create(:recon, :company_name => 'mogreet')
    recon.competition.should_not be_nil
  end

  it "should format the competition properly" do
    FactoryGirl.create(:company, :name => 'mogreet', :permalink => 'mo-greet', :category_code => 'mobile')
    recon = FactoryGirl.create(:recon, :company_name => 'mogreet')
    competitor = recon.competition.first

    competitor[:logo].should == "http://www.crunchbase.com/assets/images/resized/0003/0563/30563v4-max-150x150.png"
    competitor[:name].should == "Hook Mobile"
    competitor[:external_link].should == "http://www.hookmobile.com"
    competitor[:description].should include 'accomplishment of providing mobile cloud services and carrier infrastructure management'
  end
end
