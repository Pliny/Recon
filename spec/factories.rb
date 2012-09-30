FactoryGirl.define do
  factory :recon do
    company_name 'AirBnB'
    idea "places to stay"
    audience 'travelers'
    technology 'web'
  end

  factory :company do
    name 'AirBnB'
    permalink "airbnb"
    category_code 'web'
  end
end

