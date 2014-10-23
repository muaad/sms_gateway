# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phonebook do
    number "MyString"
    surname "MyString"
    other_names "MyString"
    group nil
    country nil
  end
end
