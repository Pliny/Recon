namespace :crunchbase do

  namespace :import do

    desc "import all companies"
    task :companies => :environment do
      begin
        crunchbase = Crunchbase::User.new(Crunchbase::Client.new(Crunchbase::API_KEY))
        crunchbase.companies.each do |company|
          model = Company.new(:name => company['name'], :permalink => company['permalink'], :category_code => company['category_code'])
          model.save!
        end
      rescue => e
        p e.message
      end
    end
  end
end

