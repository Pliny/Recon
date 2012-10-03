class Recon < ActiveRecord::Base
  attr_accessible :company_name, :idea, :audience, :technology
  attr_accessor :competition

  after_create :fetch_competitors

  private

  def fetch_competitors
    crunchbase = Crunchbase::User.new(Crunchbase::Client.new(Crunchbase::API_KEY))
    @competition = Array.new
    # first, see if company name exists in Crunchbase
    if Company.where("name ilike ?", company_name).present?
      json = crunchbase.company(company_name)

      json['competitions'].map { |c| c['competitor'] }.each do |competitor|
        begin
          image = competitor['image'].present? ? competitor['image']['available_sizes'].first.second : nil
          @competition.push({
            :logo           => "http://www.crunchbase.com/#{image}",
            :name           => competitor['name'],
            :external_link  => crunchbase.company(competitor['name'])['homepage_url'],
            :description    => crunchbase.company(competitor['name'])['overview']
          })
        rescue Crunchbase::Unauthorized
        end
      end
    end
  end
end
