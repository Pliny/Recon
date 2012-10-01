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

    if params[:recon][:company_name].downcase == 'mogreet'
      @recon.competition = [
        {:logo=>"http://www.crunchbase.com/assets/images/resized/0003/0563/30563v4-max-150x150.png", :name=>"Hook Mobile", :external_link=>"http://www.hookmobile.com", :description=>"<p>Hook Mobile is a mobile cloud services company based in Vienna, Virginia. Our core competencies are in mobile messaging, device, and network intelligence.</p>\n\n<p>We have a record of accomplishment of providing mobile cloud services and carrier infrastructure management for top movie and media studios, mobile messaging and content providers, and large Internet companies in the United States and abroad.</p>\n\n<p>Our core products are cloud based and we offer robust mobile application programming interfaces (APIs) and software development kits (SDKs) to power our customer mobile needs in messaging, carrier intelligence, device, and operating systems.</p>\n\n<p>Hook Mobile is a portfolio company of IDG-Accel, Amplifier Ventures, ACTA Capital, and 500Startups. Our management team consists of veterans with extensive mobile telecommunications experience.</p>"},
        {:logo=>"http://www.crunchbase.com/assets/images/resized/0009/5037/95037v4-max-150x150.png", :name=>"Augme", :external_link=>"http://augme.com", :description=>"<p>Augme Technologies, Inc. provides strategic services and mobile technology to leading consumer and healthcare brands. Augme&#8217;s AD LIFE mobile marketing technology platform uses patented device-detection and proprietary mobile content adaptation software to solve the mobile marketing industry problem of disparate operating systems, device types, and on-screen mobile content rendering. AD LIFE allows marketers, brands, and agencies the ability to plan, create, test, deploy, and track mobile marketing programs. Through the use of consumer response tags such as 2D codes, UPC codes, SMS, Image Recognition, and mobile banner and rich media ads, AD LIFE facilitates consumer brand interaction and the ability to track and analyze campaign results. Augme also provides business to consumer utilities including national mobile couponing solutions, strategic mobile healthcare tools, custom mobile application development, consumer data tracking and analytics, creative execution, and mobile media planning. Augme is headquartered in New York City with offices in Tucson and Atlanta.</p>"},
        {:logo=>"http://www.crunchbase.com/assets/images/resized/0003/3370/33370v1-max-150x150.png", :name=>"Tapioca Mobile", :external_link=>"http://www.tapiocamobile.com", :description=>"<p>Tapioca Mobile provides the most efficient, direct way to get rich media (videos, pictures, more) into the hands of mobile phone users. They help content providers move their digital assets from servers onto handsets. They help advertisers reach a whole new base of eyes and ears.</p>"},
        {:logo=>"http://www.crunchbase.com/assets/images/resized/0006/2871/62871v1-max-150x150.png", :name=>"iLoop Mobile", :external_link=>"http://www.iLoopMobile.com", :description=>"<p>iLoop Mobile is the leader in mobile services and technology for interactive mobile marketing, mobile advertising and mobile content distribution. The company&#8217;s patent-pending mFinity platform makes it fast and easy for brands, marketing agencies, content owners and other companies to create compelling and effective mobile phone initiatives worldwide</p>"},
        {:logo=>"http://www.crunchbase.com/assets/images/resized/0001/6487/16487v3-max-150x150.png", :name=>"Skycore", :external_link=>"http://www.skycore.com", :description=>"<p>Skycore is a Mobile Marketing &amp; Commerce solutions company based in Boston, MA. </p>"}
      ]
    else
      @recon.save!
    end

    respond_with @recon do |format|
      format.html { render 'search', :layout => false }
    end
  end
end
