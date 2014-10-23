# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bind_detail do
    host_ip "MyString"
    port 1
    smpp_version "MyString"
    username "MyString"
    password "MyString"
    aggregator nil
  end
end
