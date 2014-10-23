# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :aggregator_ip do
    ip_address "MyString"
    aggregator nil
    whitlisted false
  end
end
