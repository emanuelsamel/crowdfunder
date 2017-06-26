FactoryGirl.define do
  factory :reward do
    dollar_amount (1..10000).to_a.sample
    description 'This is a test'
  end
end
