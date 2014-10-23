# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :network_contact do
    phonebook nil
    email "MyString"
    location "MyString"
    network nil
  end
end
