# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit do
    amount 1.5
    currency "MyString"
    aggregator nil
  end
end
