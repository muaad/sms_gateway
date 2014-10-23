# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sm do
    message "MyString"
    delivery_status "MyString"
    messageid "MyString"
    phonebook nil
    cost 1.5
    send_time "2014-10-23 13:29:23"
    delivery_time "2014-10-23 13:29:23"
    latency 1.5
  end
end
