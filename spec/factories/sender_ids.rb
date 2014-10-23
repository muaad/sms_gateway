# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sender_id do
    aggregator nil
    sender_id "MyString"
  end
end
