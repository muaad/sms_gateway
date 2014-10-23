# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price_list do
    credits nil
    cost_per_sms "MyString"
    aggregator nil
    bind_detail nil
  end
end
